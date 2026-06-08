.class public final Lio/sentry/android/core/R$styleable;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/android/core/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static SentryUserFeedbackButton:[I = null

.field public static SentryUserFeedbackButton_android_background:I = 0x1

.field public static SentryUserFeedbackButton_android_drawablePadding:I = 0x4

.field public static SentryUserFeedbackButton_android_drawableStart:I = 0x6

.field public static SentryUserFeedbackButton_android_padding:I = 0x2

.field public static SentryUserFeedbackButton_android_text:I = 0x3

.field public static SentryUserFeedbackButton_android_textAllCaps:I = 0x5

.field public static SentryUserFeedbackButton_android_textColor:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lio/sentry/android/core/R$styleable;->SentryUserFeedbackButton:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1010098
        0x10100d4
        0x10100d5
        0x101014f
        0x1010171
        0x101038c
        0x1010392
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
