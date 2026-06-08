.class public Lcom/rockstargames/hal/scroll/andPagerImpl$FakeContainer;
.super Lcom/rockstargames/hal/ContainerLayout;
.source "andPagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockstargames/hal/scroll/andPagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FakeContainer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rockstargames/hal/scroll/andPagerImpl;


# direct methods
.method public constructor <init>(Lcom/rockstargames/hal/scroll/andPagerImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 30
    iput-object p1, p0, Lcom/rockstargames/hal/scroll/andPagerImpl$FakeContainer;->this$0:Lcom/rockstargames/hal/scroll/andPagerImpl;

    .line 31
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/rockstargames/hal/ContainerLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/rockstargames/hal/scroll/andPagerImpl$FakeContainer;->this$0:Lcom/rockstargames/hal/scroll/andPagerImpl;

    invoke-static {v0}, Lcom/rockstargames/hal/scroll/andPagerImpl;->access$000(Lcom/rockstargames/hal/scroll/andPagerImpl;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    iget-object p1, p0, Lcom/rockstargames/hal/scroll/andPagerImpl$FakeContainer;->this$0:Lcom/rockstargames/hal/scroll/andPagerImpl;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcom/rockstargames/hal/scroll/andPagerImpl;->access$102(Lcom/rockstargames/hal/scroll/andPagerImpl;I)I

    .line 43
    iget-object p1, p0, Lcom/rockstargames/hal/scroll/andPagerImpl$FakeContainer;->this$0:Lcom/rockstargames/hal/scroll/andPagerImpl;

    invoke-virtual {p1}, Lcom/rockstargames/hal/scroll/andPagerImpl;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/rockstargames/hal/scroll/andPagerImpl$FakeContainer;->this$0:Lcom/rockstargames/hal/scroll/andPagerImpl;

    iget-object v0, v0, Lcom/rockstargames/hal/scroll/andPagerImpl;->adapter:Lcom/rockstargames/hal/scroll/andPagerImpl$andPagerAdapter;

    if-eq p1, v0, :cond_0

    .line 44
    iget-object p1, p0, Lcom/rockstargames/hal/scroll/andPagerImpl$FakeContainer;->this$0:Lcom/rockstargames/hal/scroll/andPagerImpl;

    iget-object v0, p1, Lcom/rockstargames/hal/scroll/andPagerImpl;->adapter:Lcom/rockstargames/hal/scroll/andPagerImpl$andPagerAdapter;

    invoke-virtual {p1, v0}, Lcom/rockstargames/hal/scroll/andPagerImpl;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    return-void

    .line 46
    :cond_0
    iget-object p1, p0, Lcom/rockstargames/hal/scroll/andPagerImpl$FakeContainer;->this$0:Lcom/rockstargames/hal/scroll/andPagerImpl;

    iget-object p1, p1, Lcom/rockstargames/hal/scroll/andPagerImpl;->adapter:Lcom/rockstargames/hal/scroll/andPagerImpl$andPagerAdapter;

    invoke-virtual {p1}, Lcom/rockstargames/hal/scroll/andPagerImpl$andPagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public removeAllViews()V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/rockstargames/hal/scroll/andPagerImpl$FakeContainer;->this$0:Lcom/rockstargames/hal/scroll/andPagerImpl;

    invoke-static {v0}, Lcom/rockstargames/hal/scroll/andPagerImpl;->access$000(Lcom/rockstargames/hal/scroll/andPagerImpl;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/rockstargames/hal/scroll/andPagerImpl$FakeContainer;->this$0:Lcom/rockstargames/hal/scroll/andPagerImpl;

    invoke-static {v0}, Lcom/rockstargames/hal/scroll/andPagerImpl;->access$000(Lcom/rockstargames/hal/scroll/andPagerImpl;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 55
    iget-object p1, p0, Lcom/rockstargames/hal/scroll/andPagerImpl$FakeContainer;->this$0:Lcom/rockstargames/hal/scroll/andPagerImpl;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcom/rockstargames/hal/scroll/andPagerImpl;->access$102(Lcom/rockstargames/hal/scroll/andPagerImpl;I)I

    .line 57
    iget-object p1, p0, Lcom/rockstargames/hal/scroll/andPagerImpl$FakeContainer;->this$0:Lcom/rockstargames/hal/scroll/andPagerImpl;

    invoke-virtual {p1}, Lcom/rockstargames/hal/scroll/andPagerImpl;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/rockstargames/hal/scroll/andPagerImpl$FakeContainer;->this$0:Lcom/rockstargames/hal/scroll/andPagerImpl;

    iget-object v0, v0, Lcom/rockstargames/hal/scroll/andPagerImpl;->adapter:Lcom/rockstargames/hal/scroll/andPagerImpl$andPagerAdapter;

    if-eq p1, v0, :cond_0

    .line 58
    iget-object p1, p0, Lcom/rockstargames/hal/scroll/andPagerImpl$FakeContainer;->this$0:Lcom/rockstargames/hal/scroll/andPagerImpl;

    iget-object v0, p1, Lcom/rockstargames/hal/scroll/andPagerImpl;->adapter:Lcom/rockstargames/hal/scroll/andPagerImpl$andPagerAdapter;

    invoke-virtual {p1, v0}, Lcom/rockstargames/hal/scroll/andPagerImpl;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    return-void

    .line 60
    :cond_0
    iget-object p1, p0, Lcom/rockstargames/hal/scroll/andPagerImpl$FakeContainer;->this$0:Lcom/rockstargames/hal/scroll/andPagerImpl;

    iget-object p1, p1, Lcom/rockstargames/hal/scroll/andPagerImpl;->adapter:Lcom/rockstargames/hal/scroll/andPagerImpl$andPagerAdapter;

    invoke-virtual {p1}, Lcom/rockstargames/hal/scroll/andPagerImpl$andPagerAdapter;->notifyDataSetChanged()V

    return-void
.end method
