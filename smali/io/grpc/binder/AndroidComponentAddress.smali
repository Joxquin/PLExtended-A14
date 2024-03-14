.class public Lio/grpc/binder/AndroidComponentAddress;
.super Ljava/net/SocketAddress;
.source "SourceFile"


# static fields
.field public static final synthetic d:I

.field private static final serialVersionUID:J


# instance fields
.field private final bindIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 2

    invoke-direct {p0}, Ljava/net/SocketAddress;-><init>()V

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Missing required component"

    invoke-static {v1, v0}, LO2/m;->b(Ljava/lang/Object;Z)V

    iput-object p1, p0, Lio/grpc/binder/AndroidComponentAddress;->bindIntent:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final a()Landroid/content/Intent;
    .locals 0

    iget-object p0, p0, Lio/grpc/binder/AndroidComponentAddress;->bindIntent:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public final b()Landroid/content/ComponentName;
    .locals 0

    iget-object p0, p0, Lio/grpc/binder/AndroidComponentAddress;->bindIntent:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lio/grpc/binder/AndroidComponentAddress;

    if-eqz v0, :cond_0

    check-cast p1, Lio/grpc/binder/AndroidComponentAddress;

    iget-object p0, p0, Lio/grpc/binder/AndroidComponentAddress;->bindIntent:Landroid/content/Intent;

    iget-object p1, p1, Lio/grpc/binder/AndroidComponentAddress;->bindIntent:Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lio/grpc/binder/AndroidComponentAddress;->bindIntent:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->filterHashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AndroidComponentAddress["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lio/grpc/binder/AndroidComponentAddress;->bindIntent:Landroid/content/Intent;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
