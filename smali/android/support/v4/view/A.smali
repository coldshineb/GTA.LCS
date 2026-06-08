.class final Landroid/support/v4/view/A;
.super Landroid/support/v4/view/z;

# interfaces
.implements Landroid/view/LayoutInflater$Factory2;


# direct methods
.method constructor <init>(Landroid/support/v4/view/B;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v4/view/z;-><init>(Landroid/support/v4/view/B;)V

    return-void
.end method


# virtual methods
.method public final onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/view/A;->a:Landroid/support/v4/view/B;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/support/v4/view/B;->a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
