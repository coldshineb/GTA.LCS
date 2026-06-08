.class final Lcom/rockstargames/hal/o;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field private synthetic a:Lcom/rockstargames/hal/andDropDownList;


# direct methods
.method constructor <init>(Lcom/rockstargames/hal/andDropDownList;)V
    .locals 0

    iput-object p1, p0, Lcom/rockstargames/hal/o;->a:Lcom/rockstargames/hal/andDropDownList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/rockstargames/hal/o;->a:Lcom/rockstargames/hal/andDropDownList;

    iput p3, v0, Lcom/rockstargames/hal/andDropDownList;->selectedItem:I

    return-void
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    return-void
.end method
