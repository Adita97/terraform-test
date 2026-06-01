const { onExecutePostLogin } = require("../../src/actions/dummy.js");

function makeApiMock() {
  return {
    redirect: {
      encodeToken: jest.fn().mockReturnValue("encoded-token"),
      sendUserTo: jest.fn(),
      validateToken: jest.fn(),
    },
    authentication: {
      enrollWith: jest.fn(),
    },
    multifactor: {
      enable: jest.fn(),
    },
    access: {
      deny: jest.fn(),
    },
    idToken: {
      setCustomClaim: jest.fn(),
    },
  };
}

function makeBaseEvent(overrides = {}) {
  const defaults = {
    secrets: {
      MFA_SESSION_TOKEN_SECRET: "secret-123",
      MFA_FORM_URL: "https://mfa.example.com",
    },
    request: {
      hostname: "identity.example.com",
    },
    user: {
      email: "user@example.com",
      multifactor: [],
      enrolledFactors: [],
    },
    transaction: {
      metadata: {},
    },
  };

  return {
    ...defaults,
    ...overrides,
    user: { ...defaults.user, ...(overrides.user || {}) },
    secrets: { ...defaults.secrets, ...(overrides.secrets || {}) },
    request: { ...defaults.request, ...(overrides.request || {}) },
    transaction: { ...defaults.transaction, ...(overrides.transaction || {}) },
  };
}

describe("dummy", () => {

  test("onExecutePostLogin sets dummyClaim222 custom claim on idToken", async () => {
    const event = makeBaseEvent();
    const api = makeApiMock();

    await onExecutePostLogin(event, api);

    expect(api.idToken.setCustomClaim).toHaveBeenCalledTimes(1);
    expect(api.idToken.setCustomClaim).toHaveBeenCalledWith(
      "https://example.com/dummyClaim222",
      true
    );
  });

});