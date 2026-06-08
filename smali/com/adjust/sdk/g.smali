.class public final Lcom/adjust/sdk/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private transient a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/adjust/sdk/e;

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    const/4 v1, 0x0

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "path"

    const-class v4, Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "clientSdk"

    const-class v4, Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "parameters"

    const-class v4, Ljava/util/Map;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "activityKind"

    const-class v4, Lcom/adjust/sdk/e;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "suffix"

    const-class v4, Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    return-void
.end method

.method public constructor <init>(Lcom/adjust/sdk/e;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/adjust/sdk/e;->a:Lcom/adjust/sdk/e;

    iput-object v0, p0, Lcom/adjust/sdk/g;->e:Lcom/adjust/sdk/e;

    iput-object p1, p0, Lcom/adjust/sdk/g;->e:Lcom/adjust/sdk/e;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adjust/sdk/g;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/adjust/sdk/g;->b:Ljava/lang/String;

    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/adjust/sdk/g;->d:Ljava/util/Map;

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adjust/sdk/g;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/adjust/sdk/g;->c:Ljava/lang/String;

    return-void
.end method

.method public final c()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/adjust/sdk/g;->d:Ljava/util/Map;

    return-object v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/adjust/sdk/g;->f:Ljava/lang/String;

    return-void
.end method

.method public final d()Lcom/adjust/sdk/e;
    .locals 1

    iget-object v0, p0, Lcom/adjust/sdk/g;->e:Lcom/adjust/sdk/e;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/adjust/sdk/g;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/adjust/sdk/g;

    iget-object v2, p0, Lcom/adjust/sdk/g;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/adjust/sdk/g;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/adjust/sdk/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/adjust/sdk/g;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/adjust/sdk/g;->c:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/adjust/sdk/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/adjust/sdk/g;->d:Ljava/util/Map;

    iget-object v3, p1, Lcom/adjust/sdk/g;->d:Ljava/util/Map;

    if-eqz v2, :cond_6

    if-nez v3, :cond_8

    :cond_6
    if-nez v2, :cond_7

    if-nez v3, :cond_7

    move v2, v0

    :goto_1
    if-nez v2, :cond_9

    move v0, v1

    goto :goto_0

    :cond_7
    move v2, v1

    goto :goto_1

    :cond_8
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_1

    :cond_9
    iget-object v2, p0, Lcom/adjust/sdk/g;->e:Lcom/adjust/sdk/e;

    iget-object v3, p1, Lcom/adjust/sdk/g;->e:Lcom/adjust/sdk/e;

    invoke-static {v2, v3}, Lcom/adjust/sdk/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    move v0, v1

    goto :goto_0

    :cond_a
    iget-object v2, p0, Lcom/adjust/sdk/g;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/adjust/sdk/g;->f:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/adjust/sdk/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final f()Ljava/lang/String;
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "Path:      %s\n"

    new-array v3, v8, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/adjust/sdk/g;->b:Ljava/lang/String;

    aput-object v4, v3, v7

    invoke-static {v0, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "ClientSdk: %s\n"

    new-array v3, v8, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/adjust/sdk/g;->c:Ljava/lang/String;

    aput-object v4, v3, v7

    invoke-static {v0, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/adjust/sdk/g;->d:Ljava/util/Map;

    if-eqz v0, :cond_0

    const-string v0, "Parameters:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/util/TreeMap;

    iget-object v2, p0, Lcom/adjust/sdk/g;->d:Ljava/util/Map;

    invoke-direct {v0, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    invoke-interface {v0}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "\n\t%-16s %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v5, v8

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final g()Ljava/lang/String;
    .locals 5

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "Failed to track %s%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/adjust/sdk/g;->e:Lcom/adjust/sdk/e;

    invoke-virtual {v4}, Lcom/adjust/sdk/e;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/adjust/sdk/g;->f:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget v0, p0, Lcom/adjust/sdk/g;->a:I

    if-nez v0, :cond_0

    const/16 v0, 0x11

    iput v0, p0, Lcom/adjust/sdk/g;->a:I

    iget v0, p0, Lcom/adjust/sdk/g;->a:I

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/adjust/sdk/g;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/adjust/sdk/c;->a(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p0, Lcom/adjust/sdk/g;->a:I

    iget v0, p0, Lcom/adjust/sdk/g;->a:I

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/adjust/sdk/g;->c:Ljava/lang/String;

    invoke-static {v2}, Lcom/adjust/sdk/c;->a(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p0, Lcom/adjust/sdk/g;->a:I

    iget v0, p0, Lcom/adjust/sdk/g;->a:I

    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/adjust/sdk/g;->d:Ljava/util/Map;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    iput v0, p0, Lcom/adjust/sdk/g;->a:I

    iget v0, p0, Lcom/adjust/sdk/g;->a:I

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/adjust/sdk/g;->e:Lcom/adjust/sdk/e;

    if-nez v2, :cond_2

    :goto_1
    add-int/2addr v0, v1

    iput v0, p0, Lcom/adjust/sdk/g;->a:I

    iget v0, p0, Lcom/adjust/sdk/g;->a:I

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/adjust/sdk/g;->f:Ljava/lang/String;

    invoke-static {v1}, Lcom/adjust/sdk/c;->a(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/adjust/sdk/g;->a:I

    :cond_0
    iget v0, p0, Lcom/adjust/sdk/g;->a:I

    return v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%s%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/adjust/sdk/g;->e:Lcom/adjust/sdk/e;

    invoke-virtual {v4}, Lcom/adjust/sdk/e;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/adjust/sdk/g;->f:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
