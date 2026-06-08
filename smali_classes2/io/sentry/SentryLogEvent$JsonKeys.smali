.class public final Lio/sentry/SentryLogEvent$JsonKeys;
.super Ljava/lang/Object;
.source "SentryLogEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/SentryLogEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "JsonKeys"
.end annotation


# static fields
.field public static final ATTRIBUTES:Ljava/lang/String; = "attributes"

.field public static final BODY:Ljava/lang/String; = "body"

.field public static final LEVEL:Ljava/lang/String; = "level"

.field public static final SEVERITY_NUMBER:Ljava/lang/String; = "severity_number"

.field public static final TIMESTAMP:Ljava/lang/String; = "timestamp"

.field public static final TRACE_ID:Ljava/lang/String; = "trace_id"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
