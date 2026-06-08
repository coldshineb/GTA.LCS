.class public final Lio/sentry/ProfileChunk$JsonKeys;
.super Ljava/lang/Object;
.source "ProfileChunk.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/ProfileChunk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "JsonKeys"
.end annotation


# static fields
.field public static final CHUNK_ID:Ljava/lang/String; = "chunk_id"

.field public static final CLIENT_SDK:Ljava/lang/String; = "client_sdk"

.field public static final DEBUG_META:Ljava/lang/String; = "debug_meta"

.field public static final ENVIRONMENT:Ljava/lang/String; = "environment"

.field public static final MEASUREMENTS:Ljava/lang/String; = "measurements"

.field public static final PLATFORM:Ljava/lang/String; = "platform"

.field public static final PROFILER_ID:Ljava/lang/String; = "profiler_id"

.field public static final RELEASE:Ljava/lang/String; = "release"

.field public static final SAMPLED_PROFILE:Ljava/lang/String; = "sampled_profile"

.field public static final TIMESTAMP:Ljava/lang/String; = "timestamp"

.field public static final VERSION:Ljava/lang/String; = "version"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
