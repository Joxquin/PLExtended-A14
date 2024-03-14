.class final enum Lio/grpc/internal/DnsNameResolver$JdkAddressResolver;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lio/grpc/internal/X;


# static fields
.field public static final enum d:Lio/grpc/internal/DnsNameResolver$JdkAddressResolver;

.field public static final synthetic e:[Lio/grpc/internal/DnsNameResolver$JdkAddressResolver;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/grpc/internal/DnsNameResolver$JdkAddressResolver;

    invoke-direct {v0}, Lio/grpc/internal/DnsNameResolver$JdkAddressResolver;-><init>()V

    sput-object v0, Lio/grpc/internal/DnsNameResolver$JdkAddressResolver;->d:Lio/grpc/internal/DnsNameResolver$JdkAddressResolver;

    filled-new-array {v0}, [Lio/grpc/internal/DnsNameResolver$JdkAddressResolver;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/DnsNameResolver$JdkAddressResolver;->e:[Lio/grpc/internal/DnsNameResolver$JdkAddressResolver;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "INSTANCE"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/grpc/internal/DnsNameResolver$JdkAddressResolver;
    .locals 1

    const-class v0, Lio/grpc/internal/DnsNameResolver$JdkAddressResolver;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/grpc/internal/DnsNameResolver$JdkAddressResolver;

    return-object p0
.end method

.method public static values()[Lio/grpc/internal/DnsNameResolver$JdkAddressResolver;
    .locals 1

    sget-object v0, Lio/grpc/internal/DnsNameResolver$JdkAddressResolver;->e:[Lio/grpc/internal/DnsNameResolver$JdkAddressResolver;

    invoke-virtual {v0}, [Lio/grpc/internal/DnsNameResolver$JdkAddressResolver;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/grpc/internal/DnsNameResolver$JdkAddressResolver;

    return-object v0
.end method
