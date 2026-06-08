.class final Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$LCAResult;
.super Ljava/lang/Object;
.source "ViewHierarchyNode.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LCAResult"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0082\u0008\u0018\u00002\u00020\u0001B#\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0006J\u000b\u0010\u000e\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J-\u0010\u0011\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003H\u00c6\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0015\u001a\u00020\u0016H\u00d6\u0001J\t\u0010\u0017\u001a\u00020\u0018H\u00d6\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\u0008\"\u0004\u0008\n\u0010\u000bR\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\u0008\"\u0004\u0008\r\u0010\u000b\u00a8\u0006\u0019"
    }
    d2 = {
        "Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$LCAResult;",
        "",
        "lca",
        "Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;",
        "nodeSubtree",
        "otherNodeSubtree",
        "(Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;)V",
        "getLca",
        "()Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;",
        "getNodeSubtree",
        "setNodeSubtree",
        "(Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;)V",
        "getOtherNodeSubtree",
        "setOtherNodeSubtree",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "",
        "sentry-android-replay_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final lca:Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;

.field private nodeSubtree:Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;

.field private otherNodeSubtree:Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;


# direct methods
.method public constructor <init>(Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;)V
    .locals 0

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    iput-object p1, p0, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$LCAResult;->lca:Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;

    .line 267
    iput-object p2, p0, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$LCAResult;->nodeSubtree:Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;

    .line 268
    iput-object p3, p0, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$LCAResult;->otherNodeSubtree:Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;

    return-void
.end method

.method public static synthetic copy$default(Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$LCAResult;Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;ILjava/lang/Object;)Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$LCAResult;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$LCAResult;->lca:Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$LCAResult;->nodeSubtree:Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$LCAResult;->otherNodeSubtree:Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$LCAResult;->copy(Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;)Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$LCAResult;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;
    .locals 1

    iget-object v0, p0, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$LCAResult;->lca:Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;

    return-object v0
.end method

.method public final component2()Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;
    .locals 1

    iget-object v0, p0, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$LCAResult;->nodeSubtree:Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;

    return-object v0
.end method

.method public final component3()Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;
    .locals 1

    iget-object v0, p0, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$LCAResult;->otherNodeSubtree:Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;

    return-object v0
.end method

.method public final copy(Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;)Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$LCAResult;
    .locals 1

    new-instance v0, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$LCAResult;

    invoke-direct {v0, p1, p2, p3}, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$LCAResult;-><init>(Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$LCAResult;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$LCAResult;

    iget-object v1, p0, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$LCAResult;->lca:Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;

    iget-object v3, p1, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$LCAResult;->lca:Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$LCAResult;->nodeSubtree:Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;

    iget-object v3, p1, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$LCAResult;->nodeSubtree:Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$LCAResult;->otherNodeSubtree:Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;

    iget-object p1, p1, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$LCAResult;->otherNodeSubtree:Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getLca()Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;
    .locals 1

    .line 266
    iget-object v0, p0, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$LCAResult;->lca:Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;

    return-object v0
.end method

.method public final getNodeSubtree()Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;
    .locals 1

    .line 267
    iget-object v0, p0, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$LCAResult;->nodeSubtree:Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;

    return-object v0
.end method

.method public final getOtherNodeSubtree()Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;
    .locals 1

    .line 268
    iget-object v0, p0, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$LCAResult;->otherNodeSubtree:Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$LCAResult;->lca:Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$LCAResult;->nodeSubtree:Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$LCAResult;->otherNodeSubtree:Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    return v0
.end method

.method public final setNodeSubtree(Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;)V
    .locals 0

    .line 267
    iput-object p1, p0, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$LCAResult;->nodeSubtree:Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;

    return-void
.end method

.method public final setOtherNodeSubtree(Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;)V
    .locals 0

    .line 268
    iput-object p1, p0, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$LCAResult;->otherNodeSubtree:Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LCAResult(lca="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$LCAResult;->lca:Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nodeSubtree="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$LCAResult;->nodeSubtree:Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", otherNodeSubtree="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$LCAResult;->otherNodeSubtree:Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
