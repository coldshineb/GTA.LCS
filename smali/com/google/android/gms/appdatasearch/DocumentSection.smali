.class public Lcom/google/android/gms/appdatasearch/DocumentSection;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final a:Lcom/google/android/gms/appdatasearch/d;

.field private static g:I


# instance fields
.field final b:I

.field public final c:Ljava/lang/String;

.field final d:Lcom/google/android/gms/appdatasearch/RegisterSectionInfo;

.field public final e:I

.field public final f:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "-1"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/gms/appdatasearch/DocumentSection;->g:I

    new-instance v0, Lcom/google/android/gms/appdatasearch/d;

    invoke-direct {v0}, Lcom/google/android/gms/appdatasearch/d;-><init>()V

    sput-object v0, Lcom/google/android/gms/appdatasearch/DocumentSection;->a:Lcom/google/android/gms/appdatasearch/d;

    new-instance v0, Lcom/google/android/gms/appdatasearch/a;

    const-string v1, "SsbContext"

    invoke-direct {v0, v1}, Lcom/google/android/gms/appdatasearch/a;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/appdatasearch/a;->a(Z)Lcom/google/android/gms/appdatasearch/a;

    move-result-object v0

    const-string v1, "blob"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/appdatasearch/a;->a(Ljava/lang/String;)Lcom/google/android/gms/appdatasearch/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/appdatasearch/a;->a()Lcom/google/android/gms/appdatasearch/RegisterSectionInfo;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Lcom/google/android/gms/appdatasearch/RegisterSectionInfo;I[B)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/google/android/gms/appdatasearch/DocumentSection;->g:I

    if-eq p4, v0, :cond_0

    invoke-static {p4}, Lcom/google/android/gms/appdatasearch/h;->a(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid section type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/app/f;->b(ZLjava/lang/Object;)V

    iput p1, p0, Lcom/google/android/gms/appdatasearch/DocumentSection;->b:I

    iput-object p2, p0, Lcom/google/android/gms/appdatasearch/DocumentSection;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/appdatasearch/DocumentSection;->d:Lcom/google/android/gms/appdatasearch/RegisterSectionInfo;

    iput p4, p0, Lcom/google/android/gms/appdatasearch/DocumentSection;->e:I

    iput-object p5, p0, Lcom/google/android/gms/appdatasearch/DocumentSection;->f:[B

    iget v0, p0, Lcom/google/android/gms/appdatasearch/DocumentSection;->e:I

    sget v1, Lcom/google/android/gms/appdatasearch/DocumentSection;->g:I

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/google/android/gms/appdatasearch/DocumentSection;->e:I

    invoke-static {v0}, Lcom/google/android/gms/appdatasearch/h;->a(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid section type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/android/gms/appdatasearch/DocumentSection;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_4

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/appdatasearch/DocumentSection;->c:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/appdatasearch/DocumentSection;->f:[B

    if-eqz v0, :cond_3

    const-string v0, "Both content and blobContent set"

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/appdatasearch/d;->a(Lcom/google/android/gms/appdatasearch/DocumentSection;Landroid/os/Parcel;I)V

    return-void
.end method
