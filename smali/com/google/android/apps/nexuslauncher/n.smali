.class public final Lcom/google/android/apps/nexuslauncher/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/apps/nexuslauncher/o;

.field public final b:Lcom/google/android/apps/nexuslauncher/o;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/nexuslauncher/o;Lcom/google/android/apps/nexuslauncher/o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/n;->a:Lcom/google/android/apps/nexuslauncher/o;

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/n;->b:Lcom/google/android/apps/nexuslauncher/o;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/apps/nexuslauncher/n;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/apps/nexuslauncher/n;

    iget-object v1, p1, Lcom/google/android/apps/nexuslauncher/n;->a:Lcom/google/android/apps/nexuslauncher/o;

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/n;->a:Lcom/google/android/apps/nexuslauncher/o;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/n;->b:Lcom/google/android/apps/nexuslauncher/o;

    iget-object p1, p1, Lcom/google/android/apps/nexuslauncher/n;->b:Lcom/google/android/apps/nexuslauncher/o;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/n;->a:Lcom/google/android/apps/nexuslauncher/o;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/o;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/n;->b:Lcom/google/android/apps/nexuslauncher/o;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/o;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SearchTarget(search="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/n;->a:Lcom/google/android/apps/nexuslauncher/o;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", voice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/n;->b:Lcom/google/android/apps/nexuslauncher/o;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
