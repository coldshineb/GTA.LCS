.class Lcom/rockstargames/hal/scroll/andPagerImpl$andPagerAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "andPagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockstargames/hal/scroll/andPagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "andPagerAdapter"
.end annotation


# instance fields
.field private addedViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/rockstargames/hal/scroll/andPagerImpl;


# direct methods
.method private constructor <init>(Lcom/rockstargames/hal/scroll/andPagerImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 77
    iput-object p1, p0, Lcom/rockstargames/hal/scroll/andPagerImpl$andPagerAdapter;->this$0:Lcom/rockstargames/hal/scroll/andPagerImpl;

    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    .line 101
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/rockstargames/hal/scroll/andPagerImpl$andPagerAdapter;->addedViews:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/rockstargames/hal/scroll/andPagerImpl;Lcom/rockstargames/hal/scroll/andPagerImpl$1;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcom/rockstargames/hal/scroll/andPagerImpl$andPagerAdapter;-><init>(Lcom/rockstargames/hal/scroll/andPagerImpl;)V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/rockstargames/hal/scroll/andPagerImpl$andPagerAdapter;->this$0:Lcom/rockstargames/hal/scroll/andPagerImpl;

    invoke-static {v0}, Lcom/rockstargames/hal/scroll/andPagerImpl;->access$100(Lcom/rockstargames/hal/scroll/andPagerImpl;)I

    move-result v0

    iget-object v1, p0, Lcom/rockstargames/hal/scroll/andPagerImpl$andPagerAdapter;->this$0:Lcom/rockstargames/hal/scroll/andPagerImpl;

    iget v1, v1, Lcom/rockstargames/hal/scroll/andPagerImpl;->currentPage:I

    if-eq v0, v1, :cond_1

    .line 136
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 v0, 0x0

    .line 138
    :goto_0
    iget-object v1, p0, Lcom/rockstargames/hal/scroll/andPagerImpl$andPagerAdapter;->this$0:Lcom/rockstargames/hal/scroll/andPagerImpl;

    invoke-static {v1}, Lcom/rockstargames/hal/scroll/andPagerImpl;->access$000(Lcom/rockstargames/hal/scroll/andPagerImpl;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 139
    iget-object v1, p0, Lcom/rockstargames/hal/scroll/andPagerImpl$andPagerAdapter;->this$0:Lcom/rockstargames/hal/scroll/andPagerImpl;

    invoke-static {v1}, Lcom/rockstargames/hal/scroll/andPagerImpl;->access$000(Lcom/rockstargames/hal/scroll/andPagerImpl;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/rockstargames/hal/scroll/andPagerImpl$andPagerAdapter;->this$0:Lcom/rockstargames/hal/scroll/andPagerImpl;

    iget v1, v0, Lcom/rockstargames/hal/scroll/andPagerImpl;->currentPage:I

    invoke-static {v0, v1}, Lcom/rockstargames/hal/scroll/andPagerImpl;->access$102(Lcom/rockstargames/hal/scroll/andPagerImpl;I)I

    .line 145
    :cond_1
    invoke-super {p0, p1}, Landroidx/viewpager/widget/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/rockstargames/hal/scroll/andPagerImpl$andPagerAdapter;->this$0:Lcom/rockstargames/hal/scroll/andPagerImpl;

    invoke-static {v0}, Lcom/rockstargames/hal/scroll/andPagerImpl;->access$000(Lcom/rockstargames/hal/scroll/andPagerImpl;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 0

    const/4 p1, -0x2

    return p1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 0

    .line 112
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 2

    .line 89
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 90
    iget-object v0, p0, Lcom/rockstargames/hal/scroll/andPagerImpl$andPagerAdapter;->this$0:Lcom/rockstargames/hal/scroll/andPagerImpl;

    invoke-static {v0}, Lcom/rockstargames/hal/scroll/andPagerImpl;->access$000(Lcom/rockstargames/hal/scroll/andPagerImpl;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lt p2, v0, :cond_0

    return v1

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/rockstargames/hal/scroll/andPagerImpl$andPagerAdapter;->this$0:Lcom/rockstargames/hal/scroll/andPagerImpl;

    invoke-static {v0}, Lcom/rockstargames/hal/scroll/andPagerImpl;->access$000(Lcom/rockstargames/hal/scroll/andPagerImpl;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method
