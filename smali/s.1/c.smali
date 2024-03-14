.class public final Ls/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Ls/c;

.field public static final c:Ls/c;


# instance fields
.field public final a:Ljava/lang/Throwable;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    sget-boolean v0, Ls/i;->g:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sput-object v1, Ls/c;->c:Ls/c;

    sput-object v1, Ls/c;->b:Ls/c;

    goto :goto_0

    :cond_0
    new-instance v0, Ls/c;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ls/c;-><init>(Ljava/lang/Throwable;Z)V

    sput-object v0, Ls/c;->c:Ls/c;

    new-instance v0, Ls/c;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ls/c;-><init>(Ljava/lang/Throwable;Z)V

    sput-object v0, Ls/c;->b:Ls/c;

    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls/c;->a:Ljava/lang/Throwable;

    return-void
.end method
