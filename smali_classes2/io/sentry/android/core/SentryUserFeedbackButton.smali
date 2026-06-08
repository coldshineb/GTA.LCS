.class public Lio/sentry/android/core/SentryUserFeedbackButton;
.super Landroid/widget/Button;
.source "SentryUserFeedbackButton.java"


# instance fields
.field private delegate:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 18
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 19
    invoke-direct {p0, p1, v0, v1, v1}, Lio/sentry/android/core/SentryUserFeedbackButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1, p2, v0, v0}, Lio/sentry/android/core/SentryUserFeedbackButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, p2, p3, v0}, Lio/sentry/android/core/SentryUserFeedbackButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Lio/sentry/android/core/SentryUserFeedbackButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 9

    .line 45
    sget-object v0, Lio/sentry/android/core/R$styleable;->SentryUserFeedbackButton:[I

    .line 46
    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 48
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget p3, p3, Landroid/util/DisplayMetrics;->density:F

    .line 49
    sget p4, Lio/sentry/android/core/R$styleable;->SentryUserFeedbackButton_android_drawablePadding:I

    const/high16 v0, -0x40800000    # -1.0f

    .line 50
    invoke-virtual {p2, p4, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p4

    .line 51
    sget v1, Lio/sentry/android/core/R$styleable;->SentryUserFeedbackButton_android_drawableStart:I

    const/4 v2, -0x1

    .line 52
    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 53
    sget v3, Lio/sentry/android/core/R$styleable;->SentryUserFeedbackButton_android_textAllCaps:I

    const/4 v4, 0x0

    .line 54
    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 55
    sget v5, Lio/sentry/android/core/R$styleable;->SentryUserFeedbackButton_android_background:I

    .line 56
    invoke-virtual {p2, v5, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 57
    sget v6, Lio/sentry/android/core/R$styleable;->SentryUserFeedbackButton_android_padding:I

    .line 58
    invoke-virtual {p2, v6, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    .line 59
    sget v7, Lio/sentry/android/core/R$styleable;->SentryUserFeedbackButton_android_textColor:I

    .line 60
    invoke-virtual {p2, v7, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    .line 61
    sget v8, Lio/sentry/android/core/R$styleable;->SentryUserFeedbackButton_android_text:I

    .line 62
    invoke-virtual {p2, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    cmpl-float p4, p4, v0

    if-nez p4, :cond_0

    const/high16 p4, 0x40800000    # 4.0f

    mul-float/2addr p4, p3

    float-to-int p4, p4

    .line 66
    invoke-virtual {p0, p4}, Lio/sentry/android/core/SentryUserFeedbackButton;->setCompoundDrawablePadding(I)V

    :cond_0
    if-ne v1, v2, :cond_1

    .line 71
    sget p4, Lio/sentry/android/core/R$drawable;->sentry_user_feedback_button_logo_24:I

    invoke-virtual {p0, p4, v4, v4, v4}, Lio/sentry/android/core/SentryUserFeedbackButton;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    .line 76
    :cond_1
    invoke-virtual {p0, v3}, Lio/sentry/android/core/SentryUserFeedbackButton;->setAllCaps(Z)V

    if-ne v5, v2, :cond_2

    .line 80
    sget p4, Lio/sentry/android/core/R$drawable;->sentry_oval_button_ripple_background:I

    invoke-virtual {p0, p4}, Lio/sentry/android/core/SentryUserFeedbackButton;->setBackgroundResource(I)V

    :cond_2
    cmpl-float p4, v6, v0

    if-nez p4, :cond_3

    const/high16 p4, 0x41400000    # 12.0f

    mul-float/2addr p3, p4

    float-to-int p3, p3

    .line 86
    invoke-virtual {p0, p3, p3, p3, p3}, Lio/sentry/android/core/SentryUserFeedbackButton;->setPadding(IIII)V

    :cond_3
    if-ne v7, v2, :cond_4

    .line 92
    new-instance p3, Landroid/util/TypedValue;

    invoke-direct {p3}, Landroid/util/TypedValue;-><init>()V

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p4

    const v0, 0x1010030

    const/4 v1, 0x1

    invoke-virtual {p4, v0, p3, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    iget p3, p3, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    invoke-virtual {p4, p3, p1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    invoke-virtual {p0, p1}, Lio/sentry/android/core/SentryUserFeedbackButton;->setTextColor(I)V

    :cond_4
    if-nez v8, :cond_5

    .line 103
    const-string p1, "Report a Bug"

    invoke-virtual {p0, p1}, Lio/sentry/android/core/SentryUserFeedbackButton;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    if-eqz p2, :cond_6

    .line 105
    invoke-static {p2}, Lrockstarmobile/ui/FlutterScreen$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;)V

    .line 108
    :cond_6
    iget-object p1, p0, Lio/sentry/android/core/SentryUserFeedbackButton;->delegate:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p1}, Lio/sentry/android/core/SentryUserFeedbackButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :catchall_0
    move-exception p1

    if-eqz p2, :cond_7

    .line 45
    :try_start_1
    invoke-static {p2}, Lrockstarmobile/ui/FlutterScreen$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_0
    throw p1
.end method


# virtual methods
.method synthetic lambda$setOnClickListener$0$io-sentry-android-core-SentryUserFeedbackButton(Landroid/view/View;)V
    .locals 2

    .line 116
    new-instance v0, Lio/sentry/android/core/SentryUserFeedbackDialog$Builder;

    invoke-virtual {p0}, Lio/sentry/android/core/SentryUserFeedbackButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/sentry/android/core/SentryUserFeedbackDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lio/sentry/android/core/SentryUserFeedbackDialog$Builder;->create()Lio/sentry/android/core/SentryUserFeedbackDialog;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/android/core/SentryUserFeedbackDialog;->show()V

    .line 117
    iget-object v0, p0, Lio/sentry/android/core/SentryUserFeedbackButton;->delegate:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 118
    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lio/sentry/android/core/SentryUserFeedbackButton;->delegate:Landroid/view/View$OnClickListener;

    .line 114
    new-instance p1, Lio/sentry/android/core/SentryUserFeedbackButton$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lio/sentry/android/core/SentryUserFeedbackButton$$ExternalSyntheticLambda0;-><init>(Lio/sentry/android/core/SentryUserFeedbackButton;)V

    invoke-super {p0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
