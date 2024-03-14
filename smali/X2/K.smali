.class public final LX2/K;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LX2/b;

.field public static final b:LX2/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, LX2/b;

    const-string v1, "remote-addr"

    invoke-direct {v0, v1}, LX2/b;-><init>(Ljava/lang/String;)V

    sput-object v0, LX2/K;->a:LX2/b;

    new-instance v0, LX2/b;

    const-string v1, "local-addr"

    invoke-direct {v0, v1}, LX2/b;-><init>(Ljava/lang/String;)V

    sput-object v0, LX2/K;->b:LX2/b;

    return-void
.end method
