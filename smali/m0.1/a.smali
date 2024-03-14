.class public final Lm0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Lm0/v;


# direct methods
.method public constructor <init>(Lm0/v;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lm0/a;->a:Ljava/util/List;

    iput-object p1, p0, Lm0/a;->b:Lm0/v;

    return-void
.end method
