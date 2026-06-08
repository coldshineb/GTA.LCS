.class public final enum Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;
.super Ljava/lang/Enum;
.source "RRWebIncrementalSnapshotEvent.java"

# interfaces
.implements Lio/sentry/JsonSerializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IncrementalSource"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource$Deserializer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;",
        ">;",
        "Lio/sentry/JsonSerializable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;

.field public static final enum AdoptedStyleSheet:Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;

.field public static final enum CanvasMutation:Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;

.field public static final enum CustomElement:Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;

.field public static final enum Drag:Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;

.field public static final enum Font:Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;

.field public static final enum Input:Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;

.field public static final enum Log:Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;

.field public static final enum MediaInteraction:Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;

.field public static final enum MouseInteraction:Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;

.field public static final enum MouseMove:Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;

.field public static final enum Mutation:Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;

.field public static final enum Scroll:Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;

.field public static final enum Selection:Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;

.field public static final enum StyleDeclaration:Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;

.field public static final enum StyleSheetRule:Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;

.field public static final enum TouchMove:Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;

.field public static final enum ViewportResize:Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;


# direct methods
.method private static synthetic $values()[Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;
    .locals 18

    .line 14
    sget-object v1, Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;->Mutation:Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;

    sget-object v2, Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;->MouseMove:Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;

    sget-object v3, Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;->MouseInteraction:Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;

    sget-object v4, Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;->Scroll:Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;

    sget-object v5, Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;->ViewportResize:Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;

    sget-object v6, Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;->Input:Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;

    sget-object v7, Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;->TouchMove:Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;

    sget-object v8, Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;->MediaInteraction:Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;

    sget-object v9, Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;->StyleSheetRule:Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;

    sget-object v10, Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;->CanvasMutation:Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;

    sget-object v11, Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;->Font:Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;

    sget-object v12, Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;->Log:Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;

    sget-object v13, Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;->Drag:Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;

    sget-object v14, Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;->StyleDeclaration:Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;

    sget-object v15, Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;->Selection:Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;

    sget-object v16, Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;->AdoptedStyleSheet:Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;

    sget-object v17, Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;->CustomElement:Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;

    filled-new-array/range {v1 .. v17}, [Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 15
    new-instance v0, Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;

    const-string v1, "Mutation"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;->Mutation:Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;

    .line 16
    new-instance v0, Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;

    const-string v1, "MouseMove"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;->MouseMove:Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;

    .line 17
    new-instance v0, Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;

    const-string v1, "MouseInteraction"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;->MouseInteraction:Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;

    .line 18
    new-instance v0, Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;

    const-string v1, "Scroll"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;->Scroll:Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;

    .line 19
    new-instance v0, Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;

    const-string v1, "ViewportResize"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;->ViewportResize:Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;

    .line 20
    new-instance v0, Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;

    const-string v1, "Input"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;->Input:Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;

    .line 21
    new-instance v0, Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;

    const-string v1, "TouchMove"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;->TouchMove:Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;

    .line 22
    new-instance v0, Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;

    const-string v1, "MediaInteraction"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;->MediaInteraction:Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;

    .line 23
    new-instance v0, Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;

    const-string v1, "StyleSheetRule"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;->StyleSheetRule:Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;

    .line 24
    new-instance v0, Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;

    const-string v1, "CanvasMutation"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;->CanvasMutation:Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;

    .line 25
    new-instance v0, Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;

    const-string v1, "Font"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;->Font:Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;

    .line 26
    new-instance v0, Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;

    const-string v1, "Log"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;->Log:Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;

    .line 27
    new-instance v0, Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;

    const-string v1, "Drag"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;->Drag:Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;

    .line 28
    new-instance v0, Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;

    const-string v1, "StyleDeclaration"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;->StyleDeclaration:Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;

    .line 29
    new-instance v0, Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;

    const-string v1, "Selection"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;->Selection:Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;

    .line 30
    new-instance v0, Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;

    const-string v1, "AdoptedStyleSheet"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;->AdoptedStyleSheet:Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;

    .line 31
    new-instance v0, Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;

    const-string v1, "CustomElement"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;->CustomElement:Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;

    .line 14
    invoke-static {}, Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;->$values()[Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;

    move-result-object v0

    sput-object v0, Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;->$VALUES:[Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;
    .locals 1

    .line 14
    const-class v0, Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;

    return-object p0
.end method

.method public static values()[Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;
    .locals 1

    .line 14
    sget-object v0, Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;->$VALUES:[Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;

    invoke-virtual {v0}, [Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;

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
    invoke-virtual {p0}, Lio/sentry/rrweb/RRWebIncrementalSnapshotEvent$IncrementalSource;->ordinal()I

    move-result p2

    int-to-long v0, p2

    invoke-interface {p1, v0, v1}, Lio/sentry/ObjectWriter;->value(J)Lio/sentry/ObjectWriter;

    return-void
.end method
