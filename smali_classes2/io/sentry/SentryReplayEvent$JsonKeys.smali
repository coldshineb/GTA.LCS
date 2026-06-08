.class public final Lio/sentry/SentryReplayEvent$JsonKeys;
.super Ljava/lang/Object;
.source "SentryReplayEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/SentryReplayEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "JsonKeys"
.end annotation


# static fields
.field public static final ERROR_IDS:Ljava/lang/String; = "error_ids"

.field public static final REPLAY_ID:Ljava/lang/String; = "replay_id"

.field public static final REPLAY_START_TIMESTAMP:Ljava/lang/String; = "replay_start_timestamp"

.field public static final REPLAY_TYPE:Ljava/lang/String; = "replay_type"

.field public static final SEGMENT_ID:Ljava/lang/String; = "segment_id"

.field public static final TIMESTAMP:Ljava/lang/String; = "timestamp"

.field public static final TRACE_IDS:Ljava/lang/String; = "trace_ids"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final URLS:Ljava/lang/String; = "urls"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
