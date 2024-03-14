.class public final synthetic Le2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Le2/h;

.field public final synthetic e:Landroid/app/search/SearchSession;


# direct methods
.method public synthetic constructor <init>(Le2/h;Landroid/app/search/SearchSession;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le2/b;->d:Le2/h;

    iput-object p2, p0, Le2/b;->e:Landroid/app/search/SearchSession;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Le2/b;->d:Le2/h;

    iget-object p0, p0, Le2/b;->e:Landroid/app/search/SearchSession;

    iput-object p0, v0, Le2/h;->e:Landroid/app/search/SearchSession;

    return-void
.end method
