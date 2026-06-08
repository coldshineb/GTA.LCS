.class public final Lio/sentry/rrweb/RRWebSpanEvent$JsonKeys;
.super Ljava/lang/Object;
.source "RRWebSpanEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/rrweb/RRWebSpanEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "JsonKeys"
.end annotation


# static fields
.field public static final DATA:Ljava/lang/String; = "data"

.field public static final DESCRIPTION:Ljava/lang/String; = "description"

.field public static final END_TIMESTAMP:Ljava/lang/String; = "endTimestamp"

.field public static final OP:Ljava/lang/String; = "op"

.field public static final PAYLOAD:Ljava/lang/String; = "payload"

.field public static final START_TIMESTAMP:Ljava/lang/String; = "startTimestamp"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
