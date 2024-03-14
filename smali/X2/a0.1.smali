.class public abstract LX2/a0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LX2/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LX2/b;

    const-string v1, "health-checking-config"

    invoke-direct {v0, v1}, LX2/b;-><init>(Ljava/lang/String;)V

    sput-object v0, LX2/a0;->a:LX2/b;

    return-void
.end method


# virtual methods
.method public abstract a(LX2/L0;)V
.end method

.method public abstract b(LX2/X;)V
.end method

.method public abstract c()V
.end method
