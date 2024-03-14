.class public final synthetic LL1/h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LL1/Z;


# instance fields
.field public final synthetic a:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;

.field public final synthetic b:I

.field public final synthetic c:Z

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;IZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LL1/h0;->a:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;

    iput p2, p0, LL1/h0;->b:I

    iput-boolean p3, p0, LL1/h0;->c:Z

    iput-boolean p4, p0, LL1/h0;->d:Z

    return-void
.end method


# virtual methods
.method public final a(LJ1/e;Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/EntitiesData;)V
    .locals 4

    iget-object v0, p0, LL1/h0;->a:Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;

    iget-object v1, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->r:LL1/o;

    iget v2, v1, LL1/o;->f:I

    iget v3, p0, LL1/h0;->b:I

    invoke-virtual {v1, v3, p1, p2, v2}, LL1/o;->a(ILJ1/e;Lcom/google/android/apps/miphone/aiai/matchmaker/overview/api/generatedv2/EntitiesData;I)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, LL1/h0;->c:Z

    iget-boolean p0, p0, LL1/h0;->d:Z

    invoke-virtual {v0, p1, p0}, Lcom/google/android/apps/miphone/aiai/matchmaker/overview/ui/b;->d(ZZ)V

    :goto_0
    return-void
.end method
