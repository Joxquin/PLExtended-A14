.class public final LR2/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:LR2/b;

.field public static final c:LR2/b;


# instance fields
.field public final a:Ljava/lang/Throwable;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    sget-boolean v0, Lcom/google/common/util/concurrent/c;->g:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sput-object v1, LR2/b;->c:LR2/b;

    sput-object v1, LR2/b;->b:LR2/b;

    goto :goto_0

    :cond_0
    new-instance v0, LR2/b;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LR2/b;-><init>(Ljava/lang/Throwable;Z)V

    sput-object v0, LR2/b;->c:LR2/b;

    new-instance v0, LR2/b;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LR2/b;-><init>(Ljava/lang/Throwable;Z)V

    sput-object v0, LR2/b;->b:LR2/b;

    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LR2/b;->a:Ljava/lang/Throwable;

    return-void
.end method
