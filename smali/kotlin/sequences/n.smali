.class public Lkotlin/sequences/n;
.super Lkotlin/sequences/l;
.source "SourceFile"


# direct methods
.method public static final a(Ljava/lang/Object;Lm3/l;)Lkotlin/sequences/g;
    .locals 2

    const-string v0, "nextFunction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p0, :cond_0

    sget-object p0, Lkotlin/sequences/b;->a:Lkotlin/sequences/b;

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlin/sequences/f;

    new-instance v1, Lkotlin/sequences/SequencesKt__SequencesKt$generateSequence$2;

    invoke-direct {v1, p0}, Lkotlin/sequences/SequencesKt__SequencesKt$generateSequence$2;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1, p1}, Lkotlin/sequences/f;-><init>(Lm3/a;Lm3/l;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method
