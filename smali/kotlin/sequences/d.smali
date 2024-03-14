.class public final Lkotlin/sequences/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/sequences/g;


# instance fields
.field public final a:Lkotlin/sequences/g;

.field public final b:Z

.field public final c:Lm3/l;


# direct methods
.method public constructor <init>(Lkotlin/sequences/g;ZLm3/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/sequences/d;->a:Lkotlin/sequences/g;

    iput-boolean p2, p0, Lkotlin/sequences/d;->b:Z

    iput-object p3, p0, Lkotlin/sequences/d;->c:Lm3/l;

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lkotlin/sequences/c;

    invoke-direct {v0, p0}, Lkotlin/sequences/c;-><init>(Lkotlin/sequences/d;)V

    return-object v0
.end method
