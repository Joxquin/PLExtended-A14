.class public abstract LX2/O;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LX2/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, LX2/b;

    const-string v1, "io.grpc.config-selector"

    invoke-direct {v0, v1}, LX2/b;-><init>(Ljava/lang/String;)V

    sput-object v0, LX2/O;->a:LX2/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()LX2/N;
.end method
