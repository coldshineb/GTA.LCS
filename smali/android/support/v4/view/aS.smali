.class Landroid/support/v4/view/aS;
.super Landroid/support/v4/view/aQ;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/view/aQ;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/support/v4/view/ba;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    new-instance v0, Landroid/support/v4/view/aX;

    invoke-direct {v0, p2, p1}, Landroid/support/v4/view/aX;-><init>(Landroid/support/v4/view/ba;Landroid/view/View;)V

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method
