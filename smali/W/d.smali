.class public final LW/d;
.super Landroidx/lifecycle/N;
.source "SourceFile"


# static fields
.field public static final e:LW/c;


# instance fields
.field public final d:Lq/n;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, LW/c;

    invoke-direct {v0}, LW/c;-><init>()V

    sput-object v0, LW/d;->e:LW/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/lifecycle/N;-><init>()V

    new-instance v0, Lq/n;

    invoke-direct {v0}, Lq/n;-><init>()V

    iput-object v0, p0, LW/d;->d:Lq/n;

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 5

    iget-object p0, p0, LW/d;->d:Lq/n;

    iget v0, p0, Lq/n;->f:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-lez v0, :cond_1

    iget-object p0, p0, Lq/n;->e:[Ljava/lang/Object;

    aget-object p0, p0, v2

    check-cast p0, LW/b;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "LoaderManager"

    const/4 v2, 0x3

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  Destroying: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    throw v1

    :cond_1
    iget-object v3, p0, Lq/n;->e:[Ljava/lang/Object;

    move v4, v2

    :goto_0
    if-ge v4, v0, :cond_2

    aput-object v1, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    iput v2, p0, Lq/n;->f:I

    return-void
.end method
