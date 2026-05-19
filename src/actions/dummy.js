/**
 * Handler that will be called during the execution of a PostUserRegistration flow.
 * This action will add the missing users to customer360 DB. This will include social users which are not covered by the post-registration action.
 * In addition, this will cover the creation of users, where the action failed
 *
 * @param {Event} event - Details about the context and user that has registered.
 */
exports.onExecutePostLogin = async (event, api) => {

    const namespace = 'https://example.com';
    api.idToken.setCustomClaim(namespace + `/dummyClaim222`, true);
};