.class final Lkotlin/collections/AbstractCollection$toString$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lm3/l;


# instance fields
.field final synthetic this$0:Lkotlin/collections/a;


# direct methods
.method public constructor <init>(Lkotlin/collections/a;)V
    .locals 0

    iput-object p1, p0, Lkotlin/collections/AbstractCollection$toString$1;->this$0:Lkotlin/collections/a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lkotlin/collections/AbstractCollection$toString$1;->this$0:Lkotlin/collections/a;

    if-ne p1, p0, :cond_0

    const-string p0, "(this Collection)"

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method
