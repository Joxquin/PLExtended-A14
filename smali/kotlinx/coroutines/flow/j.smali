.class public final synthetic Lkotlinx/coroutines/flow/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    const-string v0, "kotlinx.coroutines.flow.defaultConcurrency"

    const/16 v1, 0x10

    int-to-long v1, v1

    const/4 v3, 0x1

    int-to-long v3, v3

    const v5, 0x7fffffff

    int-to-long v5, v5

    invoke-static/range {v0 .. v6}, Lkotlinx/coroutines/internal/F;->a(Ljava/lang/String;JJJ)J

    return-void
.end method
