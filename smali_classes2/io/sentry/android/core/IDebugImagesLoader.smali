.class public interface abstract Lio/sentry/android/core/IDebugImagesLoader;
.super Ljava/lang/Object;
.source "IDebugImagesLoader.java"


# virtual methods
.method public abstract clearDebugImages()V
.end method

.method public abstract loadDebugImages()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/protocol/DebugImage;",
            ">;"
        }
    .end annotation
.end method

.method public abstract loadDebugImagesForAddresses(Ljava/util/Set;)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Lio/sentry/protocol/DebugImage;",
            ">;"
        }
    .end annotation
.end method
