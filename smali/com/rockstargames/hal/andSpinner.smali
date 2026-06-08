.class public Lcom/rockstargames/hal/andSpinner;
.super Lcom/rockstargames/hal/andView;


# static fields
.field static staticCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/rockstargames/hal/andSpinner;->staticCount:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/rockstargames/hal/andView;-><init>(I)V

    new-instance v0, Lcom/rockstargames/hal/H;

    invoke-direct {v0, p0}, Lcom/rockstargames/hal/H;-><init>(Lcom/rockstargames/hal/andSpinner;)V

    invoke-virtual {p0, v0}, Lcom/rockstargames/hal/andSpinner;->setView(Landroid/view/View;)V

    sget v0, Lcom/rockstargames/hal/andSpinner;->staticCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/rockstargames/hal/andSpinner;->staticCount:I

    return-void
.end method

.method public static createView(I)Lcom/rockstargames/hal/andSpinner;
    .locals 1

    new-instance v0, Lcom/rockstargames/hal/andSpinner;

    invoke-direct {v0, p0}, Lcom/rockstargames/hal/andSpinner;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method protected finalize()V
    .locals 1

    sget v0, Lcom/rockstargames/hal/andSpinner;->staticCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/rockstargames/hal/andSpinner;->staticCount:I

    invoke-super {p0}, Lcom/rockstargames/hal/andView;->finalize()V

    return-void
.end method
