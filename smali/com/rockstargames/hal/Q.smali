.class final Lcom/rockstargames/hal/Q;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# direct methods
.method constructor <init>(Lcom/rockstargames/hal/O;Lcom/rockstargames/hal/andTextInput;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 0

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setCursorVisible(Z)V

    return-void
.end method
