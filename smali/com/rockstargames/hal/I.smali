.class public final Lcom/rockstargames/hal/I;
.super Landroid/widget/ListView;

# interfaces
.implements Landroid/widget/ListAdapter;


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Lcom/rockstargames/hal/andView;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/database/DataSetObserver;",
            ">;"
        }
    .end annotation
.end field

.field private synthetic c:Lcom/rockstargames/hal/andTable;


# direct methods
.method public constructor <init>(Lcom/rockstargames/hal/andTable;)V
    .locals 2

    const/4 v1, -0x1

    iput-object p1, p0, Lcom/rockstargames/hal/I;->c:Lcom/rockstargames/hal/andTable;

    invoke-static {}, Lcom/rockstargames/hal/ActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/rockstargames/hal/I;->a:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/rockstargames/hal/I;->b:Ljava/util/HashSet;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/rockstargames/hal/I;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, p0}, Lcom/rockstargames/hal/I;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/rockstargames/hal/I;->b:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/DataSetObserver;

    invoke-virtual {v0}, Landroid/database/DataSetObserver;->onChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final getCount()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    iget-object v0, p0, Lcom/rockstargames/hal/I;->c:Lcom/rockstargames/hal/andTable;

    iget v0, v0, Lcom/rockstargames/hal/andTable;->count:I

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/rockstargames/hal/I;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rockstargames/hal/andView;

    :cond_0
    iget-object v2, p0, Lcom/rockstargames/hal/I;->c:Lcom/rockstargames/hal/andTable;

    iget-object v1, p0, Lcom/rockstargames/hal/I;->c:Lcom/rockstargames/hal/andTable;

    iget v3, v1, Lcom/rockstargames/hal/andTable;->handle:I

    if-nez v0, :cond_2

    const/4 v1, 0x0

    :goto_0
    invoke-static {v2, v3, p1, v1}, Lcom/rockstargames/hal/andTable;->access$000(Lcom/rockstargames/hal/andTable;III)Lcom/rockstargames/hal/andView;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v2, "andTable"

    const-string v3, "*** *** Returned cell was null! *** ***"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz v0, :cond_3

    if-eq v1, v0, :cond_3

    iget-object v0, p0, Lcom/rockstargames/hal/I;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    invoke-virtual {v1}, Lcom/rockstargames/hal/andView;->getOuterView()Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-virtual {v0}, Lcom/rockstargames/hal/andView;->getHandle()I

    move-result v1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/rockstargames/hal/I;->a:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/rockstargames/hal/andView;->getOuterView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public final getViewTypeCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    invoke-virtual {p0}, Lcom/rockstargames/hal/I;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isEnabled(I)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/rockstargames/hal/I;->b:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/rockstargames/hal/I;->b:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method
