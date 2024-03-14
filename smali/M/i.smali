.class public LM/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, LM/h;

    invoke-direct {v0, p0}, LM/h;-><init>(LM/i;)V

    iput-object v0, p0, LM/i;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, LM/i;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(I)LM/e;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public b(I)LM/e;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public c(IILandroid/os/Bundle;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
