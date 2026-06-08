.class final Landroid/support/v4/d/j;
.super Landroid/support/v4/d/i;


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v4/d/i;-><init>(B)V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/d/j;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Locale;)I
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    return v0
.end method
