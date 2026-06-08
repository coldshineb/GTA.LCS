.class public final Lcom/rockstargames/gtalcs/databinding/LoadingBinding;
.super Ljava/lang/Object;
.source "LoadingBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final guideEnd:Landroidx/constraintlayout/widget/Guideline;

.field public final guideProgress:Landroidx/constraintlayout/widget/Guideline;

.field public final guideStart:Landroidx/constraintlayout/widget/Guideline;

.field public final imageBar:Landroid/widget/ImageView;

.field public final imageBarBg:Landroid/widget/ImageView;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/Guideline;Landroidx/constraintlayout/widget/Guideline;Landroidx/constraintlayout/widget/Guideline;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/rockstargames/gtalcs/databinding/LoadingBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 42
    iput-object p2, p0, Lcom/rockstargames/gtalcs/databinding/LoadingBinding;->guideEnd:Landroidx/constraintlayout/widget/Guideline;

    .line 43
    iput-object p3, p0, Lcom/rockstargames/gtalcs/databinding/LoadingBinding;->guideProgress:Landroidx/constraintlayout/widget/Guideline;

    .line 44
    iput-object p4, p0, Lcom/rockstargames/gtalcs/databinding/LoadingBinding;->guideStart:Landroidx/constraintlayout/widget/Guideline;

    .line 45
    iput-object p5, p0, Lcom/rockstargames/gtalcs/databinding/LoadingBinding;->imageBar:Landroid/widget/ImageView;

    .line 46
    iput-object p6, p0, Lcom/rockstargames/gtalcs/databinding/LoadingBinding;->imageBarBg:Landroid/widget/ImageView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/rockstargames/gtalcs/databinding/LoadingBinding;
    .locals 9

    .line 76
    sget v0, Lcom/rockstargames/gtalcs/R$id;->guideEnd:I

    .line 77
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroidx/constraintlayout/widget/Guideline;

    if-eqz v4, :cond_0

    .line 82
    sget v0, Lcom/rockstargames/gtalcs/R$id;->guideProgress:I

    .line 83
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroidx/constraintlayout/widget/Guideline;

    if-eqz v5, :cond_0

    .line 88
    sget v0, Lcom/rockstargames/gtalcs/R$id;->guideStart:I

    .line 89
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroidx/constraintlayout/widget/Guideline;

    if-eqz v6, :cond_0

    .line 94
    sget v0, Lcom/rockstargames/gtalcs/R$id;->imageBar:I

    .line 95
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_0

    .line 100
    sget v0, Lcom/rockstargames/gtalcs/R$id;->imageBarBg:I

    .line 101
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/ImageView;

    if-eqz v8, :cond_0

    .line 106
    new-instance v2, Lcom/rockstargames/gtalcs/databinding/LoadingBinding;

    move-object v3, p0

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct/range {v2 .. v8}, Lcom/rockstargames/gtalcs/databinding/LoadingBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/Guideline;Landroidx/constraintlayout/widget/Guideline;Landroidx/constraintlayout/widget/Guideline;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    return-object v2

    .line 109
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 110
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/rockstargames/gtalcs/databinding/LoadingBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 57
    invoke-static {p0, v0, v1}, Lcom/rockstargames/gtalcs/databinding/LoadingBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/rockstargames/gtalcs/databinding/LoadingBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/rockstargames/gtalcs/databinding/LoadingBinding;
    .locals 2

    .line 63
    sget v0, Lcom/rockstargames/gtalcs/R$layout;->loading:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 65
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 67
    :cond_0
    invoke-static {p0}, Lcom/rockstargames/gtalcs/databinding/LoadingBinding;->bind(Landroid/view/View;)Lcom/rockstargames/gtalcs/databinding/LoadingBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/rockstargames/gtalcs/databinding/LoadingBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/rockstargames/gtalcs/databinding/LoadingBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
