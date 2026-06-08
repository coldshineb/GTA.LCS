.class public final Lio/sentry/android/core/SentryUserFeedbackDialog;
.super Landroid/app/AlertDialog;
.source "SentryUserFeedbackDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/core/SentryUserFeedbackDialog$OptionsConfiguration;,
        Lio/sentry/android/core/SentryUserFeedbackDialog$Builder;
    }
.end annotation


# instance fields
.field private final associatedEventId:Lio/sentry/protocol/SentryId;

.field private final configuration:Lio/sentry/android/core/SentryUserFeedbackDialog$OptionsConfiguration;

.field private final configurator:Lio/sentry/SentryFeedbackOptions$OptionsConfigurator;

.field private currentReplayId:Lio/sentry/protocol/SentryId;

.field private delegate:Landroid/content/DialogInterface$OnDismissListener;

.field private isCancelable:Z


# direct methods
.method constructor <init>(Landroid/content/Context;ILio/sentry/protocol/SentryId;Lio/sentry/android/core/SentryUserFeedbackDialog$OptionsConfiguration;Lio/sentry/SentryFeedbackOptions$OptionsConfigurator;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x0

    .line 26
    iput-boolean p1, p0, Lio/sentry/android/core/SentryUserFeedbackDialog;->isCancelable:Z

    .line 41
    iput-object p3, p0, Lio/sentry/android/core/SentryUserFeedbackDialog;->associatedEventId:Lio/sentry/protocol/SentryId;

    .line 42
    iput-object p4, p0, Lio/sentry/android/core/SentryUserFeedbackDialog;->configuration:Lio/sentry/android/core/SentryUserFeedbackDialog$OptionsConfiguration;

    .line 43
    iput-object p5, p0, Lio/sentry/android/core/SentryUserFeedbackDialog;->configurator:Lio/sentry/SentryFeedbackOptions$OptionsConfigurator;

    .line 44
    invoke-static {}, Lio/sentry/SentryIntegrationPackageStorage;->getInstance()Lio/sentry/SentryIntegrationPackageStorage;

    move-result-object p1

    const-string p2, "UserFeedbackWidget"

    invoke-virtual {p1, p2}, Lio/sentry/SentryIntegrationPackageStorage;->addIntegration(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$onCreate$0$io-sentry-android-core-SentryUserFeedbackDialog(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Lio/sentry/SentryFeedbackOptions;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;)V
    .locals 3

    .line 133
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p8

    invoke-virtual {p8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p8

    invoke-virtual {p8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p8

    .line 134
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 135
    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 138
    invoke-virtual {p8}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p4}, Lio/sentry/SentryFeedbackOptions;->isNameRequired()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 139
    invoke-virtual {p5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    return-void

    .line 143
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p4}, Lio/sentry/SentryFeedbackOptions;->isEmailRequired()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 144
    invoke-virtual {p6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    return-void

    .line 148
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 149
    invoke-virtual {p7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    return-void

    .line 154
    :cond_2
    new-instance p1, Lio/sentry/protocol/Feedback;

    invoke-direct {p1, v1}, Lio/sentry/protocol/Feedback;-><init>(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p1, p8}, Lio/sentry/protocol/Feedback;->setName(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p1, v0}, Lio/sentry/protocol/Feedback;->setContactEmail(Ljava/lang/String;)V

    .line 157
    iget-object p2, p0, Lio/sentry/android/core/SentryUserFeedbackDialog;->associatedEventId:Lio/sentry/protocol/SentryId;

    if-eqz p2, :cond_3

    .line 158
    invoke-virtual {p1, p2}, Lio/sentry/protocol/Feedback;->setAssociatedEventId(Lio/sentry/protocol/SentryId;)V

    .line 160
    :cond_3
    iget-object p2, p0, Lio/sentry/android/core/SentryUserFeedbackDialog;->currentReplayId:Lio/sentry/protocol/SentryId;

    if-eqz p2, :cond_4

    .line 161
    invoke-virtual {p1, p2}, Lio/sentry/protocol/Feedback;->setReplayId(Lio/sentry/protocol/SentryId;)V

    .line 165
    :cond_4
    invoke-static {p1}, Lio/sentry/Sentry;->captureFeedback(Lio/sentry/protocol/Feedback;)Lio/sentry/protocol/SentryId;

    move-result-object p2

    .line 166
    sget-object p3, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    invoke-virtual {p2, p3}, Lio/sentry/protocol/SentryId;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 168
    invoke-virtual {p0}, Lio/sentry/android/core/SentryUserFeedbackDialog;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p4}, Lio/sentry/SentryFeedbackOptions;->getSuccessMessageText()Ljava/lang/CharSequence;

    move-result-object p3

    const/4 p5, 0x0

    .line 167
    invoke-static {p2, p3, p5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    .line 169
    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    .line 171
    invoke-virtual {p4}, Lio/sentry/SentryFeedbackOptions;->getOnSubmitSuccess()Lio/sentry/SentryFeedbackOptions$SentryFeedbackCallback;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 173
    invoke-interface {p2, p1}, Lio/sentry/SentryFeedbackOptions$SentryFeedbackCallback;->call(Lio/sentry/protocol/Feedback;)V

    goto :goto_0

    .line 177
    :cond_5
    invoke-virtual {p4}, Lio/sentry/SentryFeedbackOptions;->getOnSubmitError()Lio/sentry/SentryFeedbackOptions$SentryFeedbackCallback;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 179
    invoke-interface {p2, p1}, Lio/sentry/SentryFeedbackOptions$SentryFeedbackCallback;->call(Lio/sentry/protocol/Feedback;)V

    .line 182
    :cond_6
    :goto_0
    invoke-virtual {p0}, Lio/sentry/android/core/SentryUserFeedbackDialog;->cancel()V

    return-void
.end method

.method synthetic lambda$onCreate$1$io-sentry-android-core-SentryUserFeedbackDialog(Landroid/view/View;)V
    .locals 0

    .line 186
    invoke-virtual {p0}, Lio/sentry/android/core/SentryUserFeedbackDialog;->cancel()V

    return-void
.end method

.method synthetic lambda$setOnDismissListener$2$io-sentry-android-core-SentryUserFeedbackDialog(Ljava/lang/Runnable;Landroid/content/DialogInterface;)V
    .locals 0

    .line 199
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x0

    .line 200
    iput-object p1, p0, Lio/sentry/android/core/SentryUserFeedbackDialog;->currentReplayId:Lio/sentry/protocol/SentryId;

    .line 201
    iget-object p1, p0, Lio/sentry/android/core/SentryUserFeedbackDialog;->delegate:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz p1, :cond_0

    .line 202
    invoke-interface {p1, p2}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13

    .line 56
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 57
    sget p1, Lio/sentry/android/core/R$layout;->sentry_dialog_user_feedback:I

    invoke-virtual {p0, p1}, Lio/sentry/android/core/SentryUserFeedbackDialog;->setContentView(I)V

    .line 58
    iget-boolean p1, p0, Lio/sentry/android/core/SentryUserFeedbackDialog;->isCancelable:Z

    invoke-virtual {p0, p1}, Lio/sentry/android/core/SentryUserFeedbackDialog;->setCancelable(Z)V

    .line 60
    new-instance v5, Lio/sentry/SentryFeedbackOptions;

    .line 61
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object p1

    invoke-interface {p1}, Lio/sentry/IScopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object p1

    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getFeedbackOptions()Lio/sentry/SentryFeedbackOptions;

    move-result-object p1

    invoke-direct {v5, p1}, Lio/sentry/SentryFeedbackOptions;-><init>(Lio/sentry/SentryFeedbackOptions;)V

    .line 62
    iget-object p1, p0, Lio/sentry/android/core/SentryUserFeedbackDialog;->configuration:Lio/sentry/android/core/SentryUserFeedbackDialog$OptionsConfiguration;

    if-eqz p1, :cond_0

    .line 63
    invoke-virtual {p0}, Lio/sentry/android/core/SentryUserFeedbackDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-interface {p1, v0, v5}, Lio/sentry/android/core/SentryUserFeedbackDialog$OptionsConfiguration;->configure(Landroid/content/Context;Lio/sentry/SentryFeedbackOptions;)V

    .line 65
    :cond_0
    iget-object p1, p0, Lio/sentry/android/core/SentryUserFeedbackDialog;->configurator:Lio/sentry/SentryFeedbackOptions$OptionsConfigurator;

    if-eqz p1, :cond_1

    .line 66
    invoke-interface {p1, v5}, Lio/sentry/SentryFeedbackOptions$OptionsConfigurator;->configure(Lio/sentry/SentryFeedbackOptions;)V

    .line 68
    :cond_1
    sget p1, Lio/sentry/android/core/R$id;->sentry_dialog_user_feedback_title:I

    invoke-virtual {p0, p1}, Lio/sentry/android/core/SentryUserFeedbackDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 69
    sget v0, Lio/sentry/android/core/R$id;->sentry_dialog_user_feedback_logo:I

    invoke-virtual {p0, v0}, Lio/sentry/android/core/SentryUserFeedbackDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 70
    sget v1, Lio/sentry/android/core/R$id;->sentry_dialog_user_feedback_txt_name:I

    invoke-virtual {p0, v1}, Lio/sentry/android/core/SentryUserFeedbackDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    .line 71
    sget v1, Lio/sentry/android/core/R$id;->sentry_dialog_user_feedback_edt_name:I

    invoke-virtual {p0, v1}, Lio/sentry/android/core/SentryUserFeedbackDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/widget/EditText;

    .line 72
    sget v1, Lio/sentry/android/core/R$id;->sentry_dialog_user_feedback_txt_email:I

    invoke-virtual {p0, v1}, Lio/sentry/android/core/SentryUserFeedbackDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    .line 73
    sget v1, Lio/sentry/android/core/R$id;->sentry_dialog_user_feedback_edt_email:I

    invoke-virtual {p0, v1}, Lio/sentry/android/core/SentryUserFeedbackDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/widget/EditText;

    .line 74
    sget v1, Lio/sentry/android/core/R$id;->sentry_dialog_user_feedback_txt_description:I

    .line 75
    invoke-virtual {p0, v1}, Lio/sentry/android/core/SentryUserFeedbackDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    .line 76
    sget v1, Lio/sentry/android/core/R$id;->sentry_dialog_user_feedback_edt_description:I

    .line 77
    invoke-virtual {p0, v1}, Lio/sentry/android/core/SentryUserFeedbackDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/EditText;

    .line 78
    sget v1, Lio/sentry/android/core/R$id;->sentry_dialog_user_feedback_btn_send:I

    invoke-virtual {p0, v1}, Lio/sentry/android/core/SentryUserFeedbackDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/Button;

    .line 79
    sget v1, Lio/sentry/android/core/R$id;->sentry_dialog_user_feedback_btn_cancel:I

    invoke-virtual {p0, v1}, Lio/sentry/android/core/SentryUserFeedbackDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/Button;

    .line 81
    invoke-virtual {v5}, Lio/sentry/SentryFeedbackOptions;->isShowBranding()Z

    move-result v1

    const/4 v11, 0x0

    const/16 v12, 0x8

    if-eqz v1, :cond_2

    .line 82
    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 84
    :cond_2
    invoke-virtual {v0, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 88
    :goto_0
    invoke-virtual {v5}, Lio/sentry/SentryFeedbackOptions;->isShowName()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v5}, Lio/sentry/SentryFeedbackOptions;->isNameRequired()Z

    move-result v0

    if-nez v0, :cond_3

    .line 89
    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 90
    invoke-virtual {v2, v12}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_1

    .line 92
    :cond_3
    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 93
    invoke-virtual {v2, v11}, Landroid/widget/EditText;->setVisibility(I)V

    .line 94
    invoke-virtual {v5}, Lio/sentry/SentryFeedbackOptions;->getNameLabel()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    invoke-virtual {v5}, Lio/sentry/SentryFeedbackOptions;->getNamePlaceholder()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 96
    invoke-virtual {v5}, Lio/sentry/SentryFeedbackOptions;->isNameRequired()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 97
    invoke-virtual {v5}, Lio/sentry/SentryFeedbackOptions;->getIsRequiredLabel()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 102
    :cond_4
    :goto_1
    invoke-virtual {v5}, Lio/sentry/SentryFeedbackOptions;->isShowEmail()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v5}, Lio/sentry/SentryFeedbackOptions;->isEmailRequired()Z

    move-result v0

    if-nez v0, :cond_5

    .line 103
    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 104
    invoke-virtual {v3, v12}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_2

    .line 106
    :cond_5
    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 107
    invoke-virtual {v3, v11}, Landroid/widget/EditText;->setVisibility(I)V

    .line 108
    invoke-virtual {v5}, Lio/sentry/SentryFeedbackOptions;->getEmailLabel()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    invoke-virtual {v5}, Lio/sentry/SentryFeedbackOptions;->getEmailPlaceholder()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 110
    invoke-virtual {v5}, Lio/sentry/SentryFeedbackOptions;->isEmailRequired()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 111
    invoke-virtual {v5}, Lio/sentry/SentryFeedbackOptions;->getIsRequiredLabel()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 116
    :cond_6
    :goto_2
    invoke-virtual {v5}, Lio/sentry/SentryFeedbackOptions;->isUseSentryUser()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 117
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/IScopes;->getScope()Lio/sentry/IScope;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/IScope;->getUser()Lio/sentry/protocol/User;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 119
    invoke-virtual {v0}, Lio/sentry/protocol/User;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 120
    invoke-virtual {v0}, Lio/sentry/protocol/User;->getEmail()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 124
    :cond_7
    invoke-virtual {v5}, Lio/sentry/SentryFeedbackOptions;->getMessageLabel()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    invoke-virtual {v5}, Lio/sentry/SentryFeedbackOptions;->getIsRequiredLabel()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 126
    invoke-virtual {v5}, Lio/sentry/SentryFeedbackOptions;->getMessagePlaceholder()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 127
    invoke-virtual {v5}, Lio/sentry/SentryFeedbackOptions;->getFormTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    invoke-virtual {v5}, Lio/sentry/SentryFeedbackOptions;->getSubmitButtonLabel()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v9, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 130
    new-instance v0, Lio/sentry/android/core/SentryUserFeedbackDialog$$ExternalSyntheticLambda0;

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lio/sentry/android/core/SentryUserFeedbackDialog$$ExternalSyntheticLambda0;-><init>(Lio/sentry/android/core/SentryUserFeedbackDialog;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Lio/sentry/SentryFeedbackOptions;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-virtual {v9, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    invoke-virtual {v5}, Lio/sentry/SentryFeedbackOptions;->getCancelButtonLabel()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v10, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 186
    new-instance p1, Lio/sentry/android/core/SentryUserFeedbackDialog$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lio/sentry/android/core/SentryUserFeedbackDialog$$ExternalSyntheticLambda1;-><init>(Lio/sentry/android/core/SentryUserFeedbackDialog;)V

    invoke-virtual {v10, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    iget-object p1, v1, Lio/sentry/android/core/SentryUserFeedbackDialog;->delegate:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {p0, p1}, Lio/sentry/android/core/SentryUserFeedbackDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method protected onStart()V
    .locals 3

    .line 212
    invoke-super {p0}, Landroid/app/AlertDialog;->onStart()V

    .line 213
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/IScopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    .line 214
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getFeedbackOptions()Lio/sentry/SentryFeedbackOptions;

    move-result-object v1

    .line 215
    invoke-virtual {v1}, Lio/sentry/SentryFeedbackOptions;->getOnFormOpen()Ljava/lang/Runnable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 217
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 219
    :cond_0
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getReplayController()Lio/sentry/ReplayController;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/sentry/ReplayController;->captureReplay(Ljava/lang/Boolean;)V

    .line 220
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getReplayController()Lio/sentry/ReplayController;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/ReplayController;->getReplayId()Lio/sentry/protocol/SentryId;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/android/core/SentryUserFeedbackDialog;->currentReplayId:Lio/sentry/protocol/SentryId;

    return-void
.end method

.method public setCancelable(Z)V
    .locals 0

    .line 49
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 50
    iput-boolean p1, p0, Lio/sentry/android/core/SentryUserFeedbackDialog;->isCancelable:Z

    return-void
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 1

    .line 192
    iput-object p1, p0, Lio/sentry/android/core/SentryUserFeedbackDialog;->delegate:Landroid/content/DialogInterface$OnDismissListener;

    .line 194
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object p1

    invoke-interface {p1}, Lio/sentry/IScopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object p1

    .line 195
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getFeedbackOptions()Lio/sentry/SentryFeedbackOptions;

    move-result-object p1

    invoke-virtual {p1}, Lio/sentry/SentryFeedbackOptions;->getOnFormClose()Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 197
    new-instance v0, Lio/sentry/android/core/SentryUserFeedbackDialog$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lio/sentry/android/core/SentryUserFeedbackDialog$$ExternalSyntheticLambda2;-><init>(Lio/sentry/android/core/SentryUserFeedbackDialog;Ljava/lang/Runnable;)V

    invoke-super {p0, v0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void

    .line 206
    :cond_0
    iget-object p1, p0, Lio/sentry/android/core/SentryUserFeedbackDialog;->delegate:Landroid/content/DialogInterface$OnDismissListener;

    invoke-super {p0, p1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method public show()V
    .locals 4

    .line 226
    invoke-static {}, Lio/sentry/Sentry;->getCurrentScopes()Lio/sentry/IScopes;

    move-result-object v0

    .line 227
    invoke-interface {v0}, Lio/sentry/IScopes;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v1

    .line 228
    invoke-interface {v0}, Lio/sentry/IScopes;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 235
    :cond_0
    invoke-super {p0}, Landroid/app/AlertDialog;->show()V

    return-void

    .line 230
    :cond_1
    :goto_0
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 231
    const-string v3, "Sentry is disabled. Feedback dialog won\'t be shown."

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
