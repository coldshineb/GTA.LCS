.class final Landroid/support/v4/view/aX;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private synthetic a:Landroid/support/v4/view/ba;

.field private synthetic b:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/support/v4/view/ba;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/view/aX;->a:Landroid/support/v4/view/ba;

    iput-object p2, p0, Landroid/support/v4/view/aX;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/view/aX;->a:Landroid/support/v4/view/ba;

    invoke-interface {v0}, Landroid/support/v4/view/ba;->a()V

    return-void
.end method
