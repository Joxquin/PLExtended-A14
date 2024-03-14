.class public final Lkotlinx/coroutines/channels/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:Lkotlinx/coroutines/channels/e;

.field public static final b:I


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    new-instance v0, Lkotlinx/coroutines/channels/e;

    invoke-direct {v0}, Lkotlinx/coroutines/channels/e;-><init>()V

    sput-object v0, Lkotlinx/coroutines/channels/e;->a:Lkotlinx/coroutines/channels/e;

    const-string v1, "kotlinx.coroutines.channels.defaultBuffer"

    const/16 v0, 0x40

    int-to-long v2, v0

    const/4 v0, 0x1

    int-to-long v4, v0

    const v0, 0x7ffffffe

    int-to-long v6, v0

    invoke-static/range {v1 .. v7}, Lkotlinx/coroutines/internal/F;->a(Ljava/lang/String;JJJ)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lkotlinx/coroutines/channels/e;->b:I

    return-void
.end method
