${msg("passwordResetSubject")!}

${msg("passwordResetEmailGreetings", user.firstName?default(user.username))!}

${msg("passwordResetEmailInfo", link)!}

${link}

${msg("passwordResetEmailNotice")!}

${msg("emailSignature", msg("brandName"))!}