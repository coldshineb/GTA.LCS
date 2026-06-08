.class public final enum Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;
.super Ljava/lang/Enum;
.source "RRWebInteractionEvent.java"

# interfaces
.implements Lio/sentry/JsonSerializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/rrweb/RRWebInteractionEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InteractionType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType$Deserializer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;",
        ">;",
        "Lio/sentry/JsonSerializable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;

.field public static final enum Blur:Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;

.field public static final enum Click:Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;

.field public static final enum ContextMenu:Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;

.field public static final enum DblClick:Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;

.field public static final enum Focus:Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;

.field public static final enum MouseDown:Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;

.field public static final enum MouseUp:Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;

.field public static final enum TouchCancel:Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;

.field public static final enum TouchEnd:Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;

.field public static final enum TouchMove_Departed:Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;

.field public static final enum TouchStart:Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;


# direct methods
.method private static synthetic $values()[Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;
    .locals 11

    .line 20
    sget-object v0, Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;->MouseUp:Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;

    sget-object v1, Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;->MouseDown:Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;

    sget-object v2, Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;->Click:Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;

    sget-object v3, Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;->ContextMenu:Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;

    sget-object v4, Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;->DblClick:Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;

    sget-object v5, Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;->Focus:Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;

    sget-object v6, Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;->Blur:Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;

    sget-object v7, Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;->TouchStart:Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;

    sget-object v8, Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;->TouchMove_Departed:Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;

    sget-object v9, Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;->TouchEnd:Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;

    sget-object v10, Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;->TouchCancel:Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;

    filled-new-array/range {v0 .. v10}, [Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 21
    new-instance v0, Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;

    const-string v1, "MouseUp"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;->MouseUp:Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;

    .line 22
    new-instance v0, Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;

    const-string v1, "MouseDown"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;->MouseDown:Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;

    .line 23
    new-instance v0, Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;

    const-string v1, "Click"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;->Click:Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;

    .line 24
    new-instance v0, Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;

    const-string v1, "ContextMenu"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;->ContextMenu:Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;

    .line 25
    new-instance v0, Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;

    const-string v1, "DblClick"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;->DblClick:Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;

    .line 26
    new-instance v0, Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;

    const-string v1, "Focus"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;->Focus:Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;

    .line 27
    new-instance v0, Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;

    const-string v1, "Blur"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;->Blur:Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;

    .line 28
    new-instance v0, Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;

    const-string v1, "TouchStart"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;->TouchStart:Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;

    .line 29
    new-instance v0, Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;

    const-string v1, "TouchMove_Departed"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;->TouchMove_Departed:Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;

    .line 30
    new-instance v0, Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;

    const-string v1, "TouchEnd"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;->TouchEnd:Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;

    .line 31
    new-instance v0, Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;

    const-string v1, "TouchCancel"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;->TouchCancel:Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;

    .line 20
    invoke-static {}, Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;->$values()[Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;

    move-result-object v0

    sput-object v0, Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;->$VALUES:[Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;
    .locals 1

    .line 20
    const-class v0, Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;

    return-object p0
.end method

.method public static values()[Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;
    .locals 1

    .line 20
    sget-object v0, Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;->$VALUES:[Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;

    invoke-virtual {v0}, [Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;

    return-object v0
.end method


# virtual methods
.method public serialize(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    invoke-virtual {p0}, Lio/sentry/rrweb/RRWebInteractionEvent$InteractionType;->ordinal()I

    move-result p2

    int-to-long v0, p2

    invoke-interface {p1, v0, v1}, Lio/sentry/ObjectWriter;->value(J)Lio/sentry/ObjectWriter;

    return-void
.end method
