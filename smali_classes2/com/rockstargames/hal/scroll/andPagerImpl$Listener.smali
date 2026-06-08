.class Lcom/rockstargames/hal/scroll/andPagerImpl$Listener;
.super Ljava/lang/Object;
.source "andPagerImpl.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockstargames/hal/scroll/andPagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Listener"
.end annotation


# instance fields
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

    .line 149
    iput-object p1, p0, Lcom/rockstargames/hal/scroll/andPagerImpl$Listener;->this$0:Lcom/rockstargames/hal/scroll/andPagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/rockstargames/hal/scroll/andPagerImpl;Lcom/rockstargames/hal/scroll/andPagerImpl$1;)V
    .locals 0

    .line 149
    invoke-direct {p0, p1}, Lcom/rockstargames/hal/scroll/andPagerImpl$Listener;-><init>(Lcom/rockstargames/hal/scroll/andPagerImpl;)V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 3

    .line 170
    iget-object v0, p0, Lcom/rockstargames/hal/scroll/andPagerImpl$Listener;->this$0:Lcom/rockstargames/hal/scroll/andPagerImpl;

    invoke-static {v0}, Lcom/rockstargames/hal/scroll/andPagerImpl;->access$200(Lcom/rockstargames/hal/scroll/andPagerImpl;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/rockstargames/hal/scroll/andPagerImpl$Listener;->this$0:Lcom/rockstargames/hal/scroll/andPagerImpl;

    invoke-static {v0}, Lcom/rockstargames/hal/scroll/andPagerImpl;->access$300(Lcom/rockstargames/hal/scroll/andPagerImpl;)Lcom/rockstargames/hal/andScrollView;

    move-result-object v0

    iget-object v1, p0, Lcom/rockstargames/hal/scroll/andPagerImpl$Listener;->this$0:Lcom/rockstargames/hal/scroll/andPagerImpl;

    invoke-static {v1}, Lcom/rockstargames/hal/scroll/andPagerImpl;->access$300(Lcom/rockstargames/hal/scroll/andPagerImpl;)Lcom/rockstargames/hal/andScrollView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/rockstargames/hal/andScrollView;->getHandle()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/rockstargames/hal/andScrollView;->scrollViewPageWillChange(II)V

    .line 174
    iget-object v0, p0, Lcom/rockstargames/hal/scroll/andPagerImpl$Listener;->this$0:Lcom/rockstargames/hal/scroll/andPagerImpl;

    iget v0, v0, Lcom/rockstargames/hal/scroll/andPagerImpl;->currentPage:I

    if-eq v0, p1, :cond_0

    .line 176
    iget-object v0, p0, Lcom/rockstargames/hal/scroll/andPagerImpl$Listener;->this$0:Lcom/rockstargames/hal/scroll/andPagerImpl;

    iput p1, v0, Lcom/rockstargames/hal/scroll/andPagerImpl;->currentPage:I

    .line 177
    iget-object v0, p0, Lcom/rockstargames/hal/scroll/andPagerImpl$Listener;->this$0:Lcom/rockstargames/hal/scroll/andPagerImpl;

    invoke-static {v0}, Lcom/rockstargames/hal/scroll/andPagerImpl;->access$300(Lcom/rockstargames/hal/scroll/andPagerImpl;)Lcom/rockstargames/hal/andScrollView;

    move-result-object v0

    iget-object v1, p0, Lcom/rockstargames/hal/scroll/andPagerImpl$Listener;->this$0:Lcom/rockstargames/hal/scroll/andPagerImpl;

    invoke-static {v1}, Lcom/rockstargames/hal/scroll/andPagerImpl;->access$300(Lcom/rockstargames/hal/scroll/andPagerImpl;)Lcom/rockstargames/hal/andScrollView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/rockstargames/hal/andScrollView;->getHandle()I

    move-result v1

    iget-object v2, p0, Lcom/rockstargames/hal/scroll/andPagerImpl$Listener;->this$0:Lcom/rockstargames/hal/scroll/andPagerImpl;

    iget v2, v2, Lcom/rockstargames/hal/scroll/andPagerImpl;->currentPage:I

    invoke-virtual {v0, v1, v2}, Lcom/rockstargames/hal/andScrollView;->scrollViewPageDidChange(II)V

    .line 180
    iget-object v0, p0, Lcom/rockstargames/hal/scroll/andPagerImpl$Listener;->this$0:Lcom/rockstargames/hal/scroll/andPagerImpl;

    invoke-static {v0, p1}, Lcom/rockstargames/hal/scroll/andPagerImpl;->access$402(Lcom/rockstargames/hal/scroll/andPagerImpl;I)I

    :cond_0
    return-void
.end method
