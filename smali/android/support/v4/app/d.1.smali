.class final Landroid/support/v4/app/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field private synthetic a:Landroid/view/View;

.field private synthetic b:Landroid/support/v4/app/f;

.field private synthetic c:I

.field private synthetic d:Ljava/lang/Object;

.field private synthetic e:Landroid/support/v4/app/b;


# direct methods
.method constructor <init>(Landroid/support/v4/app/b;Landroid/view/View;Landroid/support/v4/app/f;ILjava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/app/d;->e:Landroid/support/v4/app/b;

    iput-object p2, p0, Landroid/support/v4/app/d;->a:Landroid/view/View;

    iput-object p3, p0, Landroid/support/v4/app/d;->b:Landroid/support/v4/app/f;

    iput p4, p0, Landroid/support/v4/app/d;->c:I

    iput-object p5, p0, Landroid/support/v4/app/d;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 4

    iget-object v0, p0, Landroid/support/v4/app/d;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Landroid/support/v4/app/d;->e:Landroid/support/v4/app/b;

    iget-object v1, p0, Landroid/support/v4/app/d;->b:Landroid/support/v4/app/f;

    iget v2, p0, Landroid/support/v4/app/d;->c:I

    iget-object v3, p0, Landroid/support/v4/app/d;->d:Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Landroid/support/v4/app/b;->a(Landroid/support/v4/app/b;Landroid/support/v4/app/f;ILjava/lang/Object;)V

    const/4 v0, 0x1

    return v0
.end method
