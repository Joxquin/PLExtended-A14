.class public final Lio/grpc/binder/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Lio/grpc/binder/e;


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/grpc/binder/e;

    invoke-direct {v0}, Lio/grpc/binder/e;-><init>()V

    sput-object v0, Lio/grpc/binder/e;->d:Lio/grpc/binder/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/grpc/binder/e;->a:Z

    iput-boolean v0, p0, Lio/grpc/binder/e;->b:Z

    const v0, 0x8000

    iput v0, p0, Lio/grpc/binder/e;->c:I

    return-void
.end method
