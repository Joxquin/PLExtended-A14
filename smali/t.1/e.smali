.class public final Lt/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lt/h;

.field public final b:Lt/h;

.field public c:[Lt/m;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lt/h;

    invoke-direct {v0}, Lt/h;-><init>()V

    iput-object v0, p0, Lt/e;->a:Lt/h;

    new-instance v0, Lt/h;

    invoke-direct {v0}, Lt/h;-><init>()V

    iput-object v0, p0, Lt/e;->b:Lt/h;

    const/16 v0, 0x20

    new-array v0, v0, [Lt/m;

    iput-object v0, p0, Lt/e;->c:[Lt/m;

    return-void
.end method
