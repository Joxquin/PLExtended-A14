.class public final LK/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LK/f;

.field public static final b:LK/f;

.field public static final c:LK/f;

.field public static final d:LK/f;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, LK/f;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LK/f;-><init>(LK/c;Z)V

    sput-object v0, LK/g;->a:LK/f;

    new-instance v0, LK/f;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, LK/f;-><init>(LK/c;Z)V

    sput-object v0, LK/g;->b:LK/f;

    new-instance v0, LK/f;

    sget-object v1, LK/c;->a:LK/c;

    invoke-direct {v0, v1, v2}, LK/f;-><init>(LK/c;Z)V

    sput-object v0, LK/g;->c:LK/f;

    new-instance v0, LK/f;

    invoke-direct {v0, v1, v3}, LK/f;-><init>(LK/c;Z)V

    sput-object v0, LK/g;->d:LK/f;

    return-void
.end method
