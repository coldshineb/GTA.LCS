.class public Lcom/rockstargames/hal/andTable$andTableImpl;
.super Landroid/widget/ListView;
.source "andTable.java"

# interfaces
.implements Landroid/widget/ListAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockstargames/hal/andTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "andTableImpl"
.end annotation


# instance fields
.field private nativeToHalMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/view/View;",
            "Lcom/rockstargames/hal/andView;",
            ">;"
        }
    .end annotation
.end field

.field private observers:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/database/DataSetObserver;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/rockstargames/hal/andTable;


# direct methods
.method public constructor <init>(Lcom/rockstargames/hal/andTable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 57
    iput-object p1, p0, Lcom/rockstargames/hal/andTable$andTableImpl;->this$0:Lcom/rockstargames/hal/andTable;

    .line 58
    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 98
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/rockstargames/hal/andTable$andTableImpl;->nativeToHalMap:Ljava/util/HashMap;

    .line 154
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/rockstargames/hal/andTable$andTableImpl;->observers:Ljava/util/HashSet;

    .line 60
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1}, Lcom/rockstargames/hal/andTable$andTableImpl;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    invoke-virtual {p0, p0}, Lcom/rockstargames/hal/andTable$andTableImpl;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getCount()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/rockstargames/hal/andTable$andTableImpl;->this$0:Lcom/rockstargames/hal/andTable;

    iget v0, v0, Lcom/rockstargames/hal/andTable;->count:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-eqz p2, :cond_0

    .line 112
    iget-object p3, p0, Lcom/rockstargames/hal/andTable$andTableImpl;->nativeToHalMap:Ljava/util/HashMap;

    invoke-virtual {p3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/rockstargames/hal/andView;

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 118
    :goto_0
    iget-object v0, p0, Lcom/rockstargames/hal/andTable$andTableImpl;->this$0:Lcom/rockstargames/hal/andTable;

    iget v1, v0, Lcom/rockstargames/hal/andTable;->handle:I

    if-nez p3, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p3}, Lcom/rockstargames/hal/andView;->getHandle()I

    move-result v2

    :goto_1
    invoke-static {v0, v1, p1, v2}, Lcom/rockstargames/hal/andTable;->access$000(Lcom/rockstargames/hal/andTable;III)Lcom/rockstargames/hal/andView;

    move-result-object p1

    if-nez p1, :cond_2

    .line 122
    const-string v0, "andTable"

    const-string v1, "*** *** Returned cell was null! *** ***"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz p3, :cond_3

    if-eq p1, p3, :cond_3

    .line 127
    iget-object p3, p0, Lcom/rockstargames/hal/andTable$andTableImpl;->nativeToHalMap:Ljava/util/HashMap;

    invoke-virtual {p3, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 129
    :cond_3
    iget-object p2, p0, Lcom/rockstargames/hal/andTable$andTableImpl;->nativeToHalMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/rockstargames/hal/andView;->getOuterView()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    :goto_2
    invoke-virtual {p1}, Lcom/rockstargames/hal/andView;->getOuterView()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 151
    invoke-virtual {p0}, Lcom/rockstargames/hal/andTable$andTableImpl;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public notifyObservers()V
    .locals 2

    .line 170
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/rockstargames/hal/andTable$andTableImpl;->observers:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/DataSetObserver;

    .line 171
    invoke-virtual {v1}, Landroid/database/DataSetObserver;->onChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/rockstargames/hal/andTable$andTableImpl;->observers:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/rockstargames/hal/andTable$andTableImpl;->observers:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method
