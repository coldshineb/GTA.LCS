.class final Landroid/support/v4/widget/I;
.super Landroid/support/v4/widget/H;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/widget/H;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)F
    .locals 1

    check-cast p1, Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v0

    return v0
.end method
