.class public Lcom/rockstargames/hal/andDropDownList;
.super Lcom/rockstargames/hal/andView;
.source "andDropDownList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rockstargames/hal/andDropDownList$andDropDownListImpl;,
        Lcom/rockstargames/hal/andDropDownList$listData;
    }
.end annotation


# static fields
.field static staticCount:I


# instance fields
.field listElements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/rockstargames/hal/andDropDownList$listData;",
            ">;"
        }
    .end annotation
.end field

.field selectedItem:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/rockstargames/hal/andView;-><init>(I)V

    const/4 p1, -0x1

    .line 37
    iput p1, p0, Lcom/rockstargames/hal/andDropDownList;->selectedItem:I

    .line 42
    new-instance p1, Lcom/rockstargames/hal/andDropDownList$andDropDownListImpl;

    invoke-direct {p1, p0}, Lcom/rockstargames/hal/andDropDownList$andDropDownListImpl;-><init>(Lcom/rockstargames/hal/andDropDownList;)V

    .line 43
    invoke-virtual {p0, p1}, Lcom/rockstargames/hal/andDropDownList;->setView(Landroid/view/View;)V

    .line 45
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/rockstargames/hal/andDropDownList;->listElements:Ljava/util/List;

    .line 47
    sget p1, Lcom/rockstargames/hal/andDropDownList;->staticCount:I

    add-int/lit8 p1, p1, 0x1

    sput p1, Lcom/rockstargames/hal/andDropDownList;->staticCount:I

    return-void
.end method

.method public static createView(I)Lcom/rockstargames/hal/andDropDownList;
    .locals 1

    .line 58
    new-instance v0, Lcom/rockstargames/hal/andDropDownList;

    invoke-direct {v0, p0}, Lcom/rockstargames/hal/andDropDownList;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public AddListItem(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 84
    new-instance v0, Lcom/rockstargames/hal/andDropDownList$listData;

    invoke-direct {v0, p0}, Lcom/rockstargames/hal/andDropDownList$listData;-><init>(Lcom/rockstargames/hal/andDropDownList;)V

    .line 85
    iput-object p1, v0, Lcom/rockstargames/hal/andDropDownList$listData;->label:Ljava/lang/String;

    .line 86
    iput-object p2, v0, Lcom/rockstargames/hal/andDropDownList$listData;->data:Ljava/lang/String;

    .line 87
    iget-object p1, p0, Lcom/rockstargames/hal/andDropDownList;->listElements:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public BuildList()V
    .locals 5

    .line 92
    invoke-virtual {p0}, Lcom/rockstargames/hal/andDropDownList;->GetSpinner()Landroid/widget/Spinner;

    move-result-object v0

    .line 94
    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x1090008

    iget-object v4, p0, Lcom/rockstargames/hal/andDropDownList;->listElements:Ljava/util/List;

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const v2, 0x1090009

    .line 96
    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 97
    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 98
    new-instance v1, Lcom/rockstargames/hal/andDropDownList$1;

    invoke-direct {v1, p0}, Lcom/rockstargames/hal/andDropDownList$1;-><init>(Lcom/rockstargames/hal/andDropDownList;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 120
    new-instance v1, Lcom/rockstargames/hal/andDropDownList$2;

    invoke-direct {v1, p0}, Lcom/rockstargames/hal/andDropDownList$2;-><init>(Lcom/rockstargames/hal/andDropDownList;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method public GetSelectedItemData()Ljava/lang/String;
    .locals 3

    .line 137
    iget v0, p0, Lcom/rockstargames/hal/andDropDownList;->selectedItem:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 139
    iget-object v1, p0, Lcom/rockstargames/hal/andDropDownList;->listElements:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rockstargames/hal/andDropDownList$listData;

    iget-object v0, v0, Lcom/rockstargames/hal/andDropDownList$listData;->data:Ljava/lang/String;

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "data code: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "data"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected GetSpinner()Landroid/widget/Spinner;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/rockstargames/hal/andDropDownList;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/Spinner;

    return-object v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 52
    sget v0, Lcom/rockstargames/hal/andDropDownList;->staticCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/rockstargames/hal/andDropDownList;->staticCount:I

    .line 53
    invoke-super {p0}, Lcom/rockstargames/hal/andView;->finalize()V

    return-void
.end method

.method public getHeight()I
    .locals 1

    .line 68
    invoke-virtual {p0}, Lcom/rockstargames/hal/andDropDownList;->getContainer()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 63
    invoke-virtual {p0}, Lcom/rockstargames/hal/andDropDownList;->getContainer()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 171
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const-string p2, "input_method"

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 172
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return v0
.end method

.method public setBounds(FFFFFF)V
    .locals 0

    .line 74
    invoke-super/range {p0 .. p6}, Lcom/rockstargames/hal/andView;->setBounds(FFFFFF)V

    return-void
.end method
