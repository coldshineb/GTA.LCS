.class public Lcom/rockstargames/hal/andTable;
.super Lcom/rockstargames/hal/andView;


# static fields
.field static staticCount:I


# instance fields
.field protected count:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/rockstargames/hal/andTable;->staticCount:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/rockstargames/hal/andView;-><init>(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/rockstargames/hal/andTable;->count:I

    new-instance v0, Lcom/rockstargames/hal/I;

    invoke-direct {v0, p0}, Lcom/rockstargames/hal/I;-><init>(Lcom/rockstargames/hal/andTable;)V

    invoke-virtual {p0, v0}, Lcom/rockstargames/hal/andTable;->setView(Landroid/view/View;)V

    sget v0, Lcom/rockstargames/hal/andTable;->staticCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/rockstargames/hal/andTable;->staticCount:I

    return-void
.end method

.method static synthetic access$000(Lcom/rockstargames/hal/andTable;III)Lcom/rockstargames/hal/andView;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/rockstargames/hal/andTable;->getCell(III)Lcom/rockstargames/hal/andView;

    move-result-object v0

    return-object v0
.end method

.method public static createView(I)Lcom/rockstargames/hal/andTable;
    .locals 1

    new-instance v0, Lcom/rockstargames/hal/andTable;

    invoke-direct {v0, p0}, Lcom/rockstargames/hal/andTable;-><init>(I)V

    return-object v0
.end method

.method private native getCell(III)Lcom/rockstargames/hal/andView;
.end method


# virtual methods
.method protected finalize()V
    .locals 1

    sget v0, Lcom/rockstargames/hal/andTable;->staticCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/rockstargames/hal/andTable;->staticCount:I

    invoke-super {p0}, Lcom/rockstargames/hal/andView;->finalize()V

    return-void
.end method

.method protected getTable()Lcom/rockstargames/hal/I;
    .locals 1

    iget-object v0, p0, Lcom/rockstargames/hal/andTable;->view:Landroid/view/View;

    check-cast v0, Lcom/rockstargames/hal/I;

    return-object v0
.end method

.method public setCellCount(I)V
    .locals 1

    iput p1, p0, Lcom/rockstargames/hal/andTable;->count:I

    invoke-virtual {p0}, Lcom/rockstargames/hal/andTable;->getTable()Lcom/rockstargames/hal/I;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rockstargames/hal/I;->a()V

    invoke-virtual {p0}, Lcom/rockstargames/hal/andTable;->getTable()Lcom/rockstargames/hal/I;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rockstargames/hal/I;->invalidate()V

    return-void
.end method
