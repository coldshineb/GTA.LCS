.class public Lcom/rockstargames/hal/andDropDownList;
.super Lcom/rockstargames/hal/andView;


# static fields
.field static staticCount:I


# instance fields
.field listElements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/rockstargames/hal/q;",
            ">;"
        }
    .end annotation
.end field

.field selectedItem:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/rockstargames/hal/andDropDownList;->staticCount:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/rockstargames/hal/andView;-><init>(I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/rockstargames/hal/andDropDownList;->selectedItem:I

    new-instance v0, Lcom/rockstargames/hal/p;

    invoke-direct {v0, p0}, Lcom/rockstargames/hal/p;-><init>(Lcom/rockstargames/hal/andDropDownList;)V

    invoke-virtual {p0, v0}, Lcom/rockstargames/hal/andDropDownList;->setView(Landroid/view/View;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/rockstargames/hal/andDropDownList;->listElements:Ljava/util/List;

    sget v0, Lcom/rockstargames/hal/andDropDownList;->staticCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/rockstargames/hal/andDropDownList;->staticCount:I

    return-void
.end method

.method public static createView(I)Lcom/rockstargames/hal/andDropDownList;
    .locals 1

    new-instance v0, Lcom/rockstargames/hal/andDropDownList;

    invoke-direct {v0, p0}, Lcom/rockstargames/hal/andDropDownList;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public AddListItem(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/rockstargames/hal/q;

    invoke-direct {v0, p0}, Lcom/rockstargames/hal/q;-><init>(Lcom/rockstargames/hal/andDropDownList;)V

    iput-object p1, v0, Lcom/rockstargames/hal/q;->a:Ljava/lang/String;

    iput-object p2, v0, Lcom/rockstargames/hal/q;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/rockstargames/hal/andDropDownList;->listElements:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public BuildList()V
    .locals 5

    invoke-virtual {p0}, Lcom/rockstargames/hal/andDropDownList;->GetSpinner()Landroid/widget/Spinner;

    move-result-object v0

    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x1090008

    iget-object v4, p0, Lcom/rockstargames/hal/andDropDownList;->listElements:Ljava/util/List;

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const v2, 0x1090009

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    new-instance v1, Lcom/rockstargames/hal/n;

    invoke-direct {v1, p0}, Lcom/rockstargames/hal/n;-><init>(Lcom/rockstargames/hal/andDropDownList;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v1, Lcom/rockstargames/hal/o;

    invoke-direct {v1, p0}, Lcom/rockstargames/hal/o;-><init>(Lcom/rockstargames/hal/andDropDownList;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method public GetSelectedItemData()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lcom/rockstargames/hal/andDropDownList;->selectedItem:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/rockstargames/hal/andDropDownList;->listElements:Ljava/util/List;

    iget v1, p0, Lcom/rockstargames/hal/andDropDownList;->selectedItem:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rockstargames/hal/q;

    iget-object v0, v0, Lcom/rockstargames/hal/q;->b:Ljava/lang/String;

    const-string v1, "data"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "data code: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected GetSpinner()Landroid/widget/Spinner;
    .locals 1

    iget-object v0, p0, Lcom/rockstargames/hal/andDropDownList;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/Spinner;

    return-object v0
.end method

.method protected finalize()V
    .locals 1

    sget v0, Lcom/rockstargames/hal/andDropDownList;->staticCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/rockstargames/hal/andDropDownList;->staticCount:I

    invoke-super {p0}, Lcom/rockstargames/hal/andView;->finalize()V

    return-void
.end method

.method public getHeight()I
    .locals 1

    invoke-virtual {p0}, Lcom/rockstargames/hal/andDropDownList;->getContainer()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    invoke-virtual {p0}, Lcom/rockstargames/hal/andDropDownList;->getContainer()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return v2
.end method

.method public setBounds(FFFFFF)V
    .locals 0

    invoke-super/range {p0 .. p6}, Lcom/rockstargames/hal/andView;->setBounds(FFFFFF)V

    return-void
.end method
