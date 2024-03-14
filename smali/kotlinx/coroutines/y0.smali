.class public final Lkotlinx/coroutines/y0;
.super Lkotlin/coroutines/a;
.source "SourceFile"


# static fields
.field public static final e:Lkotlinx/coroutines/x0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/x0;

    invoke-direct {v0}, Lkotlinx/coroutines/x0;-><init>()V

    sput-object v0, Lkotlinx/coroutines/y0;->e:Lkotlinx/coroutines/x0;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lkotlinx/coroutines/y0;->e:Lkotlinx/coroutines/x0;

    invoke-direct {p0, v0}, Lkotlin/coroutines/a;-><init>(Lkotlin/coroutines/h;)V

    return-void
.end method
