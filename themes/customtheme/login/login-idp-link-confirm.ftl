
        <form id="kc-register-form" action="${url.loginAction}" method="post">
            <div class="d-grid gap-2">
                <button type="submit" class="btn btn-light" name="submitAction" id="updateProfile" value="updateProfile">${msg("confirmLinkIdpReviewProfile")}</button>
                <button type="submit" class="btn btn-light" name="submitAction" id="linkAccount" value="linkAccount">${msg("confirmLinkIdpContinue", idpDisplayName)}</button>
            </div>
        </form>