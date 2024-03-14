.class public final Lg2/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/M;


# static fields
.field public static final a:Lg2/g;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lg2/g;

    invoke-direct {v0}, Lg2/g;-><init>()V

    sput-object v0, Lg2/g;->a:Lg2/g;

    return-void
.end method


# virtual methods
.method public final isInRange(I)Z
    .locals 1

    const/4 p0, 0x1

    if-eqz p1, :cond_2

    if-eq p1, p0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/google/android/gms/play/cloud/search/grpc/EntryPoint;->f:Lcom/google/android/gms/play/cloud/search/grpc/EntryPoint;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/google/android/gms/play/cloud/search/grpc/EntryPoint;->e:Lcom/google/android/gms/play/cloud/search/grpc/EntryPoint;

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/google/android/gms/play/cloud/search/grpc/EntryPoint;->d:Lcom/google/android/gms/play/cloud/search/grpc/EntryPoint;

    :goto_0
    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    :goto_1
    return p0
.end method
