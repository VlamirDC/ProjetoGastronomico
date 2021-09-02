package code.com.desafio.appVlamir.model.repository;

import java.util.List;

import org.springframework.data.domain.Sort;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import code.com.desafio.appVlamir.model.domain.Roteiro;

@Repository
public interface RoteiroRepository extends CrudRepository<Roteiro, Integer> {
	public List<Roteiro> findAll(Sort sort);

}
