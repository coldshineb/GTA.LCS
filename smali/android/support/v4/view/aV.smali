.class final Landroid/support/v4/view/aV;
.super Landroid/animation/AnimatorListenerAdapter;


# instance fields
.field private synthetic a:Landroid/support/v4/view/aY;

.field private synthetic b:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/support/v4/view/aY;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/view/aV;->a:Landroid/support/v4/view/aY;

    iput-object p2, p0, Landroid/support/v4/view/aV;->b:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/view/aV;->a:Landroid/support/v4/view/aY;

    iget-object v1, p0, Landroid/support/v4/view/aV;->b:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/support/v4/view/aY;->c(Landroid/view/View;)V

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/view/aV;->a:Landroid/support/v4/view/aY;

    iget-object v1, p0, Landroid/support/v4/view/aV;->b:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/support/v4/view/aY;->b(Landroid/view/View;)V

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/view/aV;->a:Landroid/support/v4/view/aY;

    iget-object v1, p0, Landroid/support/v4/view/aV;->b:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/support/v4/view/aY;->a(Landroid/view/View;)V

    return-void
.end method
