.class public final Lkotlinx/coroutines/c;
.super Lkotlinx/coroutines/Q;
.source "SourceFile"


# instance fields
.field public final l:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Ljava/lang/Thread;)V
    .locals 0

    invoke-direct {p0}, Lkotlinx/coroutines/Q;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/c;->l:Ljava/lang/Thread;

    return-void
.end method


# virtual methods
.method public final K()Ljava/lang/Thread;
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/c;->l:Ljava/lang/Thread;

    return-object p0
.end method
